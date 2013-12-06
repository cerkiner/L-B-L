<?php
$host="localhost";
$username="eyselnet_android";
$password="android";
$db_name="eyselnet_android";
 
$con=mysql_connect("$host", "$username", "$password")or die("cannot connect"); 
mysql_select_db("$db_name")or die("cannot select DB");
	

if(isset($_GET["timestamp"])){$start=$_GET["timestamp"];$end=$start+60*60*24*30;}else{$start=time();$end=$start+60*60*24*30;};
if(isset($_GET["latitude"])){$latitude=$_GET["latitude"];}else{$latitude=0;};
if(isset($_GET["longitude"])){$longitude=$_GET["longitude"];}else{$longitude=0;};
	
	
$sql = "
SELECT event_id, event_name, start_time, place_name, latitude, longitude,
( 6371 * ACOS( COS( RADIANS( $latitude ) ) * COS( RADIANS( latitude ) ) * COS( RADIANS( longitude ) - RADIANS( $longitude ) ) + SIN( RADIANS( $latitude ) ) * SIN( RADIANS( latitude ) ) ) ) AS distance 
FROM events 
HAVING distance < 20004940 
AND start_time>UNIX_TIMESTAMP(NOW()) 
AND start_time BETWEEN $start AND $end
ORDER BY distance ASC
";
	
$result = mysql_query($sql);
$json = array();
 
$json['events'][]=array("event_id"=>"event_id", "event_name"=>"Event Name", "start_time"=>"start_time", "place_name"=>"place_name", "latitude"=>"latitude", "longitude"=>"longitude", "distance"=>"Distance(km)");

if(mysql_num_rows($result)){
while($row=mysql_fetch_assoc($result)){
$json['events'][]=$row;
}
}
mysql_close($con);
echo json_encode($json);
?> 