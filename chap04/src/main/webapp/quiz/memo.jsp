<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
String[] texts = new String[10];
String text = request.getParameter("memo");
application.setAttribute("memo", text);

for (int i = 0; i < 10; i++) {
	if (application.getAttribute("" + i) == null) {
		application.setAttribute("" + i, text);
		out.print(application.getAttribute("" + i) + "\n");
		break;
	} else {
		out.print(application.getAttribute("" + i) + "\n");
	}
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>여기가 메모장</title>
</head>
<body>

</body>
</html>