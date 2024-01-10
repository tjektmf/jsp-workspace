<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- jsp:include는 forward 처럼 webapp 이하의 경로를 사용해야 한다 --%>
<!--  WEB-INF 이하에 만드는걸 권장함 굳이 보여줄 필요 없음 -->
<jsp:include page="./top.jsp" />

<h1>Index.jsp</h1>


<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis
	voluptatibus sint asperiores delectus aperiam dolore ut temporibus
	pariatur porro accusantium totam deleniti saepe! Aut beatae perferendis
	ut fugit sunt iure.</p>

<p>자바스크립트는 클라이언트에서 작동하는 언어이기 때문에 3분할의 영향을 받지 않음</p>
<p>결과는 하나로 합쳐지지만 다른 페이지에서 완성된 결과가 합쳐지는 것이기 때문에 각 jsp 페이지를 완성하기 위한
	재료는 각 페이지에 따로 존재해야 한다(jstl tag같은거)</p>
<c:forEach begin="0" end="9" var="i">
<!-- fruit에 저장된 애플은 당연히 안나옴 -->
	<p>paragraph${i}, ${fruit}</p>
</c:forEach>

<jsp:include page="./bottom.jsp"></jsp:include>