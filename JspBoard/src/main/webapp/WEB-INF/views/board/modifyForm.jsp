<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- taglib 무조건 달아야함 이건 스프링에서도 해야되더라 -->    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>수정하기 ㅇㅅㅇ/</title>
</head>
<body>

<!-- 서블릿을 통해 oldData 라는 이름(key)으로 어트리뷰트에 해당 글번호(Board_id)에 대한 데이터(value)를 실어왔음 -->
${oldData} <br />

	<!-- 키(oldData)에 대한 밸류(BoardDTO) 값을 사용할때 .을 통해 게터메서드를 불러옴 대소문자 중요-->
	<!-- 데이터를 수정하는 페이지로 수정하면 안되는 글번호나 ID 글쓴날짜 조회수 이런건 태그없이 데이터만 불러옴 -->
	글 제목 : <input name="board_title" type="text" value="${oldData.board_title}"  form="modiForm" /><br /> 
	ID : ${oldData.board_writer}
	조회수 : ${oldData.view_count} DATE : ${oldData.write_date}<br />
	<textarea name="board_content" rows="10" cols="30"  form="modiForm">${oldData.board_content}</textarea><br />
	
	<button id="modiConfirmBtn">수정완료</button>
	<button id="listBtn">목록으로</button>
	
	<form id="modiForm" action="./modify" method="post"></form>
	<input type="hidden" name="board_id" value="${oldData.board_id}" form="modiForm"/>
	<!-- 
	보여주기는 싫은데 데이터는 보내야하면 히든타입을 이용함 
	modiForm 으로 POST 방식으로 보내지는 데이터는 board_title board_content board_id 3가지임
	글쓴이 조회수 글쓴날짜는 데이터를 보내지 않음 
	 -->
	
	<c:url value="/resources/board/js/modi.js" var="modiJS"></c:url>
	<script src="${modiJS}"></script>

</body>
</html>