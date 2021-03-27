<html>

<?php
// connect database 
$db_host = "localhost";
$db_user = "root";
$db_password = "12345678";
$db_name = "exam";

$mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
$mysqli->set_charset("utf8");

$authorID = $_GET['authorID'];

$sql1 = "DELETE FROM author WHERE authorID = '$authorID'";
$query2 = mysqli_query($mysqli, $sql1);


header("location: show_author.html");

?>

</html>