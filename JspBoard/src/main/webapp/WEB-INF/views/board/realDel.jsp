<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��¥ ����</title>
</head>
<body>

<button id="deleteCheck">��¥����</button> <br />

<button id="deleteCancel">������������</button>

<c:url value="/resources/board/js/realDel.js" var="realDelJS"></c:url>
<script src="${realDelJS}"></script>
</body>
</html>