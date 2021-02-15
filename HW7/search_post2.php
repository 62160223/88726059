<html>
<head>
    <title>ค้นหาเพลง</title>
</head>
<body>
    <div class="a1">
        <h2>ค้นหาเพลง</h2>
        <input type="text" id="kw">
        
        <select id="yy">
            <option value='0'>ปีที่ออกอัลบั้ม</option>
        <?php
        // connect database 

        $db_host = "laravel-db";
        $db_user = "root";
        $db_password = "123456";
        $db_name = "Song";

        $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
        $mysqli->set_charset("utf8"); 
        
        
        $sql = " SELECT * FROM Albums";
            
        $result = mysqli_query($mysqli, $sql);

        while($row = $result->fetch_object())
        {
             echo "<option value='$row->AlbumID'>$row->Released</option>";
        }

    ?>
        </select>
        <button onclick="search()" class="button button3">ค้นหา</button>
        <div id="disp"></div>
    </div>
<script>
    
    function nl2br(str,is_xhtml){
    var breakTag = (is_xhtml || typeof is_xhtml == 'undefined') ? '<br />' : '<br>';
    return (str + '').replace(/([^>\r\n]?)(\r\n|\n\r|\r|\n)/g,'$1' + breakTag + '$2');
}
    function search(){
        var nn = document.getElementById('kw').value;
        var yy = document.getElementById('yy').value;
        console.log("kw=" + kw);
        console.log("yy=" + yy);
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                arr = JSON.parse(this.responseText);
                console.log(arr);
                if(arr.lenght == 0){
                    html = `<h4>Not Found</h4>`;
                }else{
                    html = "";
                    for (i = 0; i < arr.length; i++) {
                        html += `
                        <div class="card">
                                        <div class="card-body">
                                        <h4 class="card-title">เพลง ${arr[i].NameSong}</h4>
                                        <h4 class="card-title">อัลบั้ม ${arr[i].NameAlbum}</h4>
                                        <h4 class="card-title">ศิลปิน ${arr[i].NameSinger}</h4>
                                        <p class="card-text">${nl2br(arr[i].Lyrics)}</p>
                                        </div>
                                </div>`;
                    }
                    document.getElementById('disp').innerHTML = html;
                }
            }
        };
        var parameters = "kw=" + kw + "&yy=" + yy;
        xmlhttp.open("post", "search_post.php");
        xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xmlhttp.send(parameters);
    }
</script>
</body>
</html>
