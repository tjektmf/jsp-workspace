<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ include file="./taglibs.jspf" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ㅎㅅㅎ</title>
</head>
<body>

<h3># file include</h3>
<p>파일로 include하는 경우 해당 파일의 내용을 현태 .jsp 파일로 통째로 가져와서 사용한다</p>

<p>포함하려는 파일은 컴파일되지 않기 때문에 jsp 컴파일 형식을 지키지 않아도 된다</p>

<p>file include로 가져오는 파일은 컴파일되지 않는다고 표시하기 위해 .jspf(jsp fragment) 확장자를 사용하기도 함</p>

<p>중간에 대충 끼워넣을 수도 있음</p>
<%@ include file="./gugudan.jspf" %>

<h3>for</h3>
<c:forEach begin="0" end="9" var="i">
<li id="item${i}">list-item${i}</li>
</c:forEach> 

</body>
</html>