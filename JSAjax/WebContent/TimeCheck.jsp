<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.util.Date"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>TimeNOW</title>
</head>
<body>
	<div>
		<h2 id="time">現在的時間: <% Date date = new Date(); out.print(date);%></h2>
	</div>
</body>
</html>