<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SQL</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        textarea {
            width: 50%;
        }
        table {
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {
            background-color:#f5f5f5;
        }
        div.error {
            border-style: dotted;
            border-width: 2px;
            border-color: red;
            width: 50%
        }
        div.result {
            border-style: dotted;
            border-width: 2px;
            border-color: blue;
            width: 50%;
        }

    </style>
</head>
<body>
    <?php 
    // eliminate white space before and after the string
    $sql = trim($_POST['sql']);
    ?>
    <h4>Enter your query : SELECT, INSERT, UPDATE, DELETE</h4>
    <form action="#" method="post">
        <textarea name="sql" id="sql" cols="100%" rows="10"><?php echo $sql;?></textarea><br/>
        <input type="submit" value="Query">
    </form>
    <script>
        document.getElementById('sql').select();
    </script>

<?php
    // config for connect database 
    $db_host = "localhost";
    $db_user = "root";
    $db_password = "123456";
    $db_name = "db_name";

    // connect database
    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
    $mysqli->set_charset("utf8");

    // check connection error or not
    if ($mysqli->connect_errno) {
        echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
    } else {
        // connect success, do nothing
    }

    // select data from tables
    $result = $mysqli->query($sql);

    // if sql syntax error the $result will equal false
    if (!$result) {
            echo "<div class='error'>Error: ". $mysqli->error . "</div>";
    } else {
        // if first 6 chars equal insert or update or delete
        if (strpos("|insert|update|delete", strtolower(substr($sql, 0, 6)))) {
                echo strtolower(substr($sql, 0, 6)) . " " .$mysqli->affected_rows . " rows.";
        } else {
            if ($result->num_rows==0){
                echo "<div class='result'>No data.</div>";
            }else{
                echo "<div class='result'>Found $result->num_rows rows.</div>"; 
                $data = array();
                while($row = $result->fetch_assoc()) {
                    $data[] = $row;
                };
                $colNames = array_keys(reset($data));
                echo "<table><tr>";
                foreach($colNames as $colName) {
                    echo "<th>$colName</th>";
                }
                echo "</tr>";
                foreach($data as $row) {
                    echo "<tr>";
                    foreach($colNames as $colName) {
                        echo "<td>".$row[$colName]."</td>";
                    }   
                    echo "</tr>";
                }
                echo "</table>";
            }
        }
    }
    ?>
</body>
</html>
sql.php
Displaying sql.php.