<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>자유게시판</title>
</head>
<body>

<h2>자유게시판</h2>


<div>
<button id="newPopup">글쓰기</button>
<button id="listPopup">글목록</button>

<script src="<%=request.getContextPath()%>/resources/freePopup.js"></script>
</div>
</body>
</html>