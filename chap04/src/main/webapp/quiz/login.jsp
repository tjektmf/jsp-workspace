<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
HashMap<String, String> logInMap = new HashMap<>();
String getId = request.getParameter("id");
String getPw = request.getParameter("pw");

// ���̸� �ش� ���� �߰��� ȸ�����԰� ���ÿ� �α���
if (application.getAttribute(getId) == null) {
	logInMap.put(getId, getPw);
	application.setAttribute(getId, logInMap.get(getId));
	request.getRequestDispatcher("/quiz/check.jsp").forward(request, response);

	// ���� �ƴϸ� �ߺ����� Ȯ���ؼ� �ߺ��̸� �ε����� ��������
} else if (application.getAttribute(getId).equals(logInMap)) {
	request.getRequestDispatcher("/quiz/index.jsp").forward(request, response);
} else {
	// �ε� �ƴϰ� �ߺ��� �ƴ�
	out.print("<div>" + logInMap + "</div>");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �α����̾�</title>
</head>
<body>

</body>
</html>