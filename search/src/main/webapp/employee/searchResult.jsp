<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="search.dao.EmployeeDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String searchQuery = request.getParameter("searchQuery");
String searchType = request.getParameter("searchType");

System.out.println(searchQuery);
System.out.println(searchType);

EmployeeDAO dao = new EmployeeDAO();
request.setAttribute("emps", dao.search(searchType, searchQuery));

%>
<%-- forward() --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1># �˻� ��� ������</h1>
	
	<c:forEach items="${emps}" var="a">
	<div>${a}</div>
	</c:forEach>



</body>
</html>