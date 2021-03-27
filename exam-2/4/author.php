<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<style>
    table {
      border-collapse: collapse;
      width: 100%;
    }
    
    th, td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
    </style>
<body>
    

<table class="table table-striped">
    <h1>ผู้เเต่ง</h1>

    <tbody id="myTable">
        
    </tbody>


<script>
	 var authors = [
          { authorID: 1111, author: 'wittawas', penname: 'witty100' },
          { authorID: 1112, author: 'jakkarin', penname: 'พ่อบ้านใจกล้า' },
          { authorID: 1113, author: 'worawit', penname: 'obob' }
      ];
	
	show(authors)



	function show(authors){
		var table = document.getElementById('myTable')

		for (var i = 0; i < authors.length; i++){
            

			var loop = `<tr>
                <tr><td>รหัส : ${authors[i].authorID}</td></tr>
                <tr><td>ชื่อ : ${authors[i].author}</td></tr>
                <tr><td>นามปากกา : ${authors[i].penname}</td></tr>
					  </br></table>`

			table.innerHTML += loop


		}
	}

</script>
</body>
</html>