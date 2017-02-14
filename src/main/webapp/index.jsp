<html>
<head>
<meta charset="utf-8" />
<title>MAVEN-SSM</title>
</head>
<body>
	<input id="person_id">
	<button id="btn" onclick="selectByPrimaryKey()">press</button>
	<div id="box"></div>
<script type="text/javascript">
	var un = document.getElementById("btn");
	
	var person_id =document.getElementById("person_id");
	function selectByPrimaryKey(){
	var xmlHttp = null;
	
	if(window.XMLHttpRequest){
		xmlHttp = new XMLHttpRequest();
	}else{
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlHttp.onreadystatechange = function(){
		if(xmlHttp.status == 200 && xmlHttp.readyState == 4){
			var box = document.getElementById("box");
				box.innerHTML = xmlHttp.responseText;
			
		}
	}

	xmlHttp.open("get", "selectByPrimaryKey?id="+person_id.value, true);
	xmlHttp.send();
}
	
 
</script>

</body>
</html>