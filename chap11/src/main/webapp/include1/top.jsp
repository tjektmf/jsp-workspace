<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<c:set var="fruit" value="apple" scope="page"></c:set>
<script>
const a=10;
const b='${fruit}';
</script>
</head>
<body>

<a href="./index.jsp">index /</a>
<a href="./menu.jsp">menu /</a>
