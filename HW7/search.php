<?php
    // connect database 
    $db_host = "laravel-db";
    $db_user = "root";
    $db_password = "123456";
    $db_name = "Song";

    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
    $mysqli->set_charset("utf8");

    // check connection error 
    if ($mysqli->connect_errno) {
        echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
    } else {
        // connect success, do nothing
        //echo "Connect success.";
    }
    // select data from tables

    $kw = $_GET['kw'];
    //$kw = $_POST['kw'];
    $sql = "SELECT Songs.NameSong,Songs.Lyrics, Artists.NameSinger, Albums.NameAlbum,Albums.Released
            FROM ((Songs
            INNER JOIN Artists ON Songs.ArtistID = Artists.ArtistID)
            INNER JOIN Albums ON Songs.AlbumID = Albums.AlbumID) 
            WHERE NameSong LIKE '%$kw%' or Artists.NameSinger LIKE '%$kw%'";
    $result = $mysqli->query($sql);

    $arr = array();
    if ($result->num_rows > 0){
        // Convert MySQL Result Set to PHP Array of object
        while($row = $result->fetch_object())
        {
            $arr[] = $row;
        }
    } else {
        // echo "Not found.";
    }
    echo json_encode($arr);