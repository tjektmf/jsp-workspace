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


	�� ���� : <input name="board_title" type="text" value="${oldData.board_title}"  form="modiForm" /><br /> 
	�۾���� : ${oldData.board_writer}
	��ȸ�� : ${oldData.view_count} �ۼ��� : ${oldData.write_date}<br />
	<textarea name="board_content" rows="10" cols="30"  form="modiForm">${oldData.board_content}</textarea><br />
	
	<button id="modiConfirmBtn">�����Ϸ�</button>
	<button id="listBtn">�������</button>
	
	<!-- POST ����� ?id=1 ���, �� GET ������� �Ķ���͸� ���� �� �����Ƿ� hidden Ÿ�� input �� ����Ѵ� -->
	<form id="modiForm" action="./modify" method="post"></form>
	<input type="hidden" name="board_id" value="${oldData.board_id}" form="modiForm"/>
	
	<c:url value="/resources/board/js/modi.js" var="modiJS"></c:url>
	<script src="${modiJS}"></script>

</body>
</html>