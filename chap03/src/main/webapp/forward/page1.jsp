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
	<% out.print("�����İ� �Ű���");%> <br>
	<%= "dispatcher.forward(req, resp) �갡 �Ű���" %>
</p>

</body>
</html>