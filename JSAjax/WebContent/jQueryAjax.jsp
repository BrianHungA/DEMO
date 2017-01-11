<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>jQueryAjax</title>

<script type="text/javascript" src="./js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="./js/jquery-3.1.1.min.js"></script>
<script>

$(document).ready(function(){
	 $("button").click(function(){
	 $.get('TimeCheck.jsp',function()
	
	 {$('#time').html("<h2>" + 123 + "</h2>" )

	 }
	 );
	 });
	 });

	 /*$(document).ready(function() {
		$("button").click(function() {
			$('#div2').load('TimeCheck.jsp');
			$.get('./TimeCheck.jsp', function(data, status) {
				alert("數據:" + data + "\n 狀態:" + status);
				$("#span2").html("<p>" + status+ "</p>");
				// document.getElementById("span2").innerhtml = data;
			});
		});
	});*/
</script>


</head>
<body>
<div id="div1">
	<span id="span1">I am span1</span><br>
	<br> <span id="span2"></span>
	<button>ppp</button>
	<div id="div2"></div>


</div>


</body>
</html>