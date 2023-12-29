<%@page import="chap07.DTO.EmployeeDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Employee List</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/dbtest/css/empList.css" />
</head>
<body>

	<h3># All Employees</h3>

<div class="emp-list">
	<%
	Object employees = request.getAttribute("employees");
	if (employees != null) {
		for (EmployeeDTO emp : (List<EmployeeDTO>) employees) {
			out.print(emp.getDivRow());
		}
	} else {
		out.print("<div>No employees here</div>");
	}
	%>
</div>

</body>
</html>