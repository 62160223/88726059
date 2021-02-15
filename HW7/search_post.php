<?php
   // config for connect database 
    $db_host = "laravel-db";
    $db_user = "root";
    $db_password = "123456";
    $db_name = "Song";

    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
    $mysqli->set_charset("utf8");
  
function fill_music($mysqli){
    if (isset($_POST['kw'])) {
        $kw = $_POST['kw'];
    } else {
        $kw = '';
    }
    if (isset($_POST['yy'])) {
        $yy = $_POST['yy'];
    } else {
        $yy = '';
    }

    if($yy !=0){

        $sql = "SELECT Songs.NameSong,Songs.Lyrics, Artists.NameSinger, Albums.NameAlbum,Albums.Released
                FROM ((Songs
                INNER JOIN Artists ON Songs.ArtistID = Artists.ArtistID)
                INNER JOIN Albums ON Songs.AlbumID = Albums.AlbumID)
                WHERE Albums.AlbumID LIKE '%$yy%'";
    }else{
        $sql = "SELECT Songs.NameSong,Songs.Lyrics, Artists.NameSinger, Albums.NameAlbum,Albums.Released
                FROM ((Songs
                INNER JOIN Artists ON Songs.ArtistID = Artists.ArtistID)
                INNER JOIN Albums ON Songs.AlbumID = Albums.AlbumID) 
                WHERE NameSong LIKE '%$kw%' or Artists.NameSinger LIKE '%$kw%'";
    }

    $result = mysqli_query($mysqli, $sql);

    $arr = array();

    while($row = $result->fetch_object())
    {
         $arr[] = $row;
    }
    echo json_encode($arr,JSON_UNESCAPED_UNICODE);
}
    echo fill_music($mysqli);
?>    

