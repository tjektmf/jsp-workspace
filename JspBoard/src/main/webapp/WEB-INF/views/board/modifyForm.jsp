<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

${oldData} <br />


	글 제목 : <input name="board_title" type="text" value="${oldData.board_title}"  form="modiForm" /><br /> 
	글쓴사람 : ${oldData.board_writer}
	조회수 : ${oldData.view_count} 작성일 : ${oldData.write_date}<br />
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