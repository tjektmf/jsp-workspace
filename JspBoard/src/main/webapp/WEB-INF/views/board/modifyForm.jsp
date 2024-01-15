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

<!-- 서블릿을 통해 oldData 라는 이름으로 어트리뷰트에 해당 글번호(Board_id)에 대한 데이터를 실어왔음 -->
${oldData} <br />

	<!-- 키(oldData)에 대한 밸류(BoardDTO) 값을 사용할때 .을 통해 게터메서드를 불러옴 대소문자 중요-->
	글 제목 : <input name="board_title" type="text" value="${oldData.board_title}"  form="modiForm" /><br /> 
	ID : ${oldData.board_writer}
	조회수 : ${oldData.view_count} DATE : ${oldData.write_date}<br />
	<textarea name="board_content" rows="10" cols="30"  form="modiForm">${oldData.board_content}</textarea><br />
	
	<button id="modiConfirmBtn">수정완료</button>
	<button id="listBtn">목록으로</button>
	
	<!-- POST 방식은 ?id=1 방식, 즉 GET 방식으로 파라미터를 보낼 수 없으므로 hidden 타입 input 을 사용한다 -->
	<form id="modiForm" action="./modify" method="post"></form>
	<input type="hidden" name="board_id" value="${oldData.board_id}" form="modiForm"/>
	
	<c:url value="/resources/board/js/modi.js" var="modiJS"></c:url>
	<script src="${modiJS}"></script>

</body>
</html>