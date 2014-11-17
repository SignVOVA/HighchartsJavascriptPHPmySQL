<?php
$mysql_hostname = "localhost";
$mysql_user = "vova";
$mysql_password = "vova";
$mysql_database = "csv_db";
$bd = mysql_connect($mysql_hostname, $mysql_user, $mysql_password);
if (!$bd) {
    die('Could not connect : ' . mysql_error());
}

$db_selected = mysql_select_db($mysql_database, $bd);
if (!$db_selected) {
    die ('Could not select the database: ' . mysql_error());
}

$sql = "SELECT LocactionName,Area,Month,PointsScored,PointsOutOf FROM year_report";
$result = mysql_query($sql);
if (mysql_num_rows($result) > 0) {
	while ($row = mysql_fetch_array($result)) {
   		$data[] = $row;     		
	}
}
else
{
	echo '<br>FAIL<br>';
}

echo "<script> var reportData = " . json_encode($data) . "</script>";
?>