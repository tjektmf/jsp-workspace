<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="EUC-KR">
<title>page1</title>
</head>
<body>

<h3>page1</h3>

<p>
	<%= request.getParameter("firstName") %> <br>
	<% out.print(request.getParameter("lastName"));%> <br>
	<% out.print("디스패쳐가 옮겨줌");%> <br>
	<%= "dispatcher.forward(req, resp) 얘가 옮겨줌" %>
</p>

</body>
</html>