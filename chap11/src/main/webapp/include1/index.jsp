<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- jsp:include�� forward ó�� webapp ������ ��θ� ����ؾ� �Ѵ� --%>
<!--  WEB-INF ���Ͽ� ����°� ������ ���� ������ �ʿ� ���� -->
<jsp:include page="./top.jsp" />

<h1>Index.jsp</h1>


<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis
	voluptatibus sint asperiores delectus aperiam dolore ut temporibus
	pariatur porro accusantium totam deleniti saepe! Aut beatae perferendis
	ut fugit sunt iure.</p>

<p>�ڹٽ�ũ��Ʈ�� Ŭ���̾�Ʈ���� �۵��ϴ� ����̱� ������ 3������ ������ ���� ����</p>
<p>����� �ϳ��� ���������� �ٸ� ���������� �ϼ��� ����� �������� ���̱� ������ �� jsp �������� �ϼ��ϱ� ����
	���� �� �������� ���� �����ؾ� �Ѵ�(jstl tag������)</p>
<c:forEach begin="0" end="9" var="i">
<!-- fruit�� ����� ������ �翬�� �ȳ��� -->
	<p>paragraph${i}, ${fruit}</p>
</c:forEach>

<jsp:include page="./bottom.jsp"></jsp:include>