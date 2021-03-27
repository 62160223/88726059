<?php
    // connect database 
    $db_host = "localhost";
    $db_user = "root";
    $db_password = "12345678";
    $db_name = "exam";

    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
    $mysqli->set_charset("utf8");

$sql = "SELECT * FROM author LIMIT 0, 10";
$result = $mysqli->query($sql);

echo "<table class=table table-bordered'>";
echo "<tr?><td>ผู้เเต่ง<hr></td></tr>";

while ($row = $result->fetch_object()) {
    echo "<tr>";
    echo "<tr><td>รหัสผู้เเต่ง : $row->authorID</td></tr>";
    echo "<tr><td>ชื่อ : $row->author</td></tr>";
    echo "<tr><td>นามปากกา : $row->penname</td></tr>";
    echo "<tr><td><a href='del_author.php?authorID=$row->authorID'><button class='w3-button w3-red'>ลบ</button><hr></td></a></tr>";
    echo "</tr>";
}
echo "</table>";
