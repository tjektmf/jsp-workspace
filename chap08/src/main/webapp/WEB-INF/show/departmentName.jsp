<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="chap08.item.DataModel"%>
    <%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>department_name list</title>
<link rel="stylesheet" href="../resources/work.css" />
</head>
<body>
<h3>department_name</h3>


<div id="star">
	<%

	for (DataModel data : (List<DataModel>) request.getAttribute("department_name")) {
		out.print(data.div());
	}
	%>
</div>
<br /><br />
<form action="../search.jsp" id="form1"></form>
	<button type="submit" form="form1">�ڷΰ���</button>
</body>
</html>