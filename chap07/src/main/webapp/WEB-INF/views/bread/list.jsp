<%@page import="chap07.DTO.BreadDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Bread List</title>
</head>
<body>

	<h3># 빵 리스트</h3>

	<div>
		<%
		for (BreadDTO bread : (List<BreadDTO>) request.getAttribute("breads")) {
			out.print(String.format("<div>%s</div><div>%d</div>", bread.getBread_name(), bread.getBread_price()));
		}
		%>
	</div>

</body>
</html>