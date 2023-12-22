<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<%
// 이렇게 JSP를 사용하면 Servlet과 같음
// 근데 여긴 자바를 쓰기가 불편함 임포트가 안됨 sysout도 안되고
// request.getRequestDispatcher("/forward/page1.jsp").forward(request, response);
%>

<%-- JSP 문법으로 forward 하기 --%>
<jsp:forward page="/forward/page1.jsp"/>