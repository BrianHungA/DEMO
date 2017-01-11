<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>InfoPage</title>
<script type="text/javascript" src="./js/jquery-3.1.1.js"></script>
<script type="text/javascript">
		// Ajax 設定
		function getData(pageName){
				var req = new XMLHttpRequest();
				var url = "http://localhost:8080/JSAjax/";
				// 開啟目標網站
				//req.open("get", url + pageName,true);
				req.open("get","ShowTime")
				// 非同步狀態下，更新部分網頁
				req.onload = function(){
					var cont = document.getElementById("content1");
						cont.innerHTML = this.responseText;
					};
				req.send();
			}
		
		function getPlace(){
			// var reqPlace = new XMLHttpRequest();
			var reqPlace = document.getElementById("currentPlace").value;
			var pla = document.getElementById("content2");
			pla.innerHTML = pla.innerHTML + "<br>" + "Your current location :"+ reqPlace;
			}

		/*function getName(){
			 $(document).ready(function() {
			$("button").click(function() {
				$('#div2').load('TimeCheck.jsp');
				$.get('./homepage.jsp',{"name":rqname.value,"age":29},function(data, status) {
					alert("數據:" + data + "\n 狀態:" + status);
					$("#span2").html("<p>" + status+ "</p>");
					// document.getElementById("span2").innerhtml = data;
				});
			});
		});


			};*/

			
		
</script>

</head>
<body>

	<div>
		<span onclick="getData('TimeCheck.jsp');">現在時間:</span><br>
		<form>
			<span>所在地點</span>
			<input type ="text" name ="currentPlace" id="currentPlace"></input> 
			<input type="button" id="currentMap" value="send" onclick="getPlace();"/>
		</form>
	</div>


	<div>
		<form action="ShowInfo" method="get">
			Name : <input type="text" id="inputname" /><br> 
			Age:<input type="text" id="inputage" />
		</form>
		<input type="button" value="get" id="buttonGet" />
	</div>


	<div id="content1" style="background-color:silver;padding:10px;border:3px #cccccc dashed;width:500px" ></div>
	<div id="content2" style="background-color:grey;padding:10px;border:3px #cccccc dashed;width:500px" ></div>
	<div id="content3" style="background-color:pink;padding:10px;border:3px #cccccc dashed;width:500px" ></div>
	
	
<script type="text/javascript">
$(document).ready(
		function() {
	$('#buttonGet').click(function() {
		alert(1);
		var inname = $("#inputname").val();
		alert(inname);
		var inage = $("#inputage").val();
		alert(inage);
		/* 沒有check Success&Fail */
		var accs = $.get("ShowInfo11", {
						"userName" : inname,
						"userAge" : inage
						}, function(data) {
			$("#content3").html(data);
		});

		/*有check Success & Fail */
		/*var content = $.get("ShowInfo",
				"userName=" + inname + "&userAge=" + inage)
				.done(function(data) {
					alert("success");
					$('#content3').html(data);
				}).fail(function(data) {
					alert("error");
				})*/
	});
		});
</script>
</body>
</html>