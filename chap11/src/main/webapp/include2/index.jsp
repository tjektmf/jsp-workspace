<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ include file="./taglibs.jspf" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������</title>
</head>
<body>

<h3># file include</h3>
<p>���Ϸ� include�ϴ� ��� �ش� ������ ������ ���� .jsp ���Ϸ� ��°�� �����ͼ� ����Ѵ�</p>

<p>�����Ϸ��� ������ �����ϵ��� �ʱ� ������ jsp ������ ������ ��Ű�� �ʾƵ� �ȴ�</p>

<p>file include�� �������� ������ �����ϵ��� �ʴ´ٰ� ǥ���ϱ� ���� .jspf(jsp fragment) Ȯ���ڸ� ����ϱ⵵ ��</p>

<p>�߰��� ���� �������� ���� ����</p>
<%@ include file="./gugudan.jspf" %>

<h3>for</h3>
<c:forEach begin="0" end="9" var="i">
<li id="item${i}">list-item${i}</li>
</c:forEach> 

</body>
</html>