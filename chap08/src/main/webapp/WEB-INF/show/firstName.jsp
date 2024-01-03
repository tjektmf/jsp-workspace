<%@page import="chap08.item.DataModel"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>first_name list</title>
<link rel="stylesheet" href="../resources/work.css" />
</head>
<body>
	<h3>first_name</h3>

<div id="star">
	<%

	for (DataModel data : (List<DataModel>) request.getAttribute("first_name")) {
		out.print(data.div());
	}
	%>
</div>


	<form action="./" id="form1"></form>
	<button type="submit" form="form1">뒤로가기</button>
</body>
</html>