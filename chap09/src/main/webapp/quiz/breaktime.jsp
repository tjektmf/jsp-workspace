<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
if (request.getParameter("adver") != null) {
	Cookie cookie1 = new Cookie("timer", "die");

	cookie1.setMaxAge(20);
	response.addCookie(cookie1);
}

response.sendRedirect("/chap09/quiz/index.jsp");
%>
