<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
session.invalidate(); // ���� ��� ����

// �����̷�Ʈ = �ܺ� �ּ� ���
response.sendRedirect("/chap04/attribute/index.jsp");
%>
