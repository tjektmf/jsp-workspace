<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.List"%>
<%@page import="chap08.item.DataModel"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>last_name list</title>
<link rel="stylesheet" href="../resources/work.css" />
</head>
<body>
	<h3>last_name</h3>

	<div id="star">
		<%
		for (DataModel data : (List<DataModel>) request.getAttribute("last_name")) {
			out.print(data.div());
		}
		%>
	</div>


</body>
</html>