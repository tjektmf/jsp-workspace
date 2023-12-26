<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
HashMap<String, String> logInMap = new HashMap<>();
String getId = request.getParameter("id");
String getPw = request.getParameter("pw");

// 널이면 해당 값을 추가함 회원가입과 동시에 로그인
if (application.getAttribute(getId) == null) {
	logInMap.put(getId, getPw);
	application.setAttribute(getId, logInMap.get(getId));
	request.getRequestDispatcher("/quiz/check.jsp").forward(request, response);

	// 널이 아니면 중복인지 확인해서 중복이면 인덱스로 보내버림
} else if (application.getAttribute(getId).equals(logInMap)) {
	request.getRequestDispatcher("/quiz/index.jsp").forward(request, response);
} else {
	// 널도 아니고 중복도 아님
	out.print("<div>" + logInMap + "</div>");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>여긴 로그인이야</title>
</head>
<body>

</body>
</html>