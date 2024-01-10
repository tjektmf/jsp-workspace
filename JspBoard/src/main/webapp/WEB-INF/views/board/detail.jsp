<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>detail</title>
</head>
<body>
	<h2>detail</h2>
	<a href="./list">�ڷΰ���</a>
	<br />
	<hr />
	<!-- <h3>��ȸ �ߵ�</h3>
        ${detail} -->
	�� ���� :
	<input type="text" value="${detail.board_title}" readonly />
	<br /> �۾���� :
	<input type="text" value="${detail.board_writer}" readonly /> ��ȸ�� :
	${detail.view_count} �ۼ��� : ${detail.write_date}
	<br />
	<textarea rows="10" cols="30" readonly>${detail.board_content}</textarea>
	<br />

	<input id="inputPassword" type="password" name="board_password">
	<br />
	<button id="modiBtn">�����ϱ�</button>
	<button id="delBtn">�����ϱ�</button>
	<button id="delBtn2">�����ϱ�(�˾�â)</button>
	<br />

	<form id="delForm" action="./delete" method="POST">
		<input type="hidden" name="board_id" value="${detail.board_id}">
		<input type="hidden" name="check_password"
			value="${detail.board_password}"> <input id="hiddenPassword"
			type="hidden" name="board_password">
	</form>

	<hr />

	<c:forEach items="${replies}" var="reply">
		<div>[${reply.reply_writer}] ${reply.reply_content}
			${reply.reply_date}</div>
	</c:forEach>

	<hr />



	<div id="replyWriteDiv">
		<textarea name="reply_content" id="replyContent" rows="5" cols="50"
			form="replyForm"></textarea>
		<br />
		<button id="replyWriteBtn" form="replyForm">��� ����</button>
		<button>��� ����</button>
		<br /> ��۾����<input id="replyWriter" type="text" name="reply_writer"
			form="replyForm" /> ��й�ȣ<input id="replyPassword" type="password"
			name="reply_password" form="replyForm" />
	</div>


	<form id="replyForm" action="./reply/add" method="post">
		<input type="hidden" name="board_id" value="${detail.board_id}" />
	</form>



	<!--    <form id="modiForm" action="./modify" method="POST"></form>
   <form id="delForm" action="./delete" method="POST"></form> -->

	<c:url value="/resources/board/js/detail.js" var="detailJS" />
	<c:url value="/resources/board/js/sha256.js" var="sha256" />
	<c:url value="/resources/board/js/detailReply.js" var="detailReplyJS" />

	<script>
		const boardPassword = '${detail.board_password}'; // ''����ǥ �پ������� ���ڿ� �Ⱥپ������� ���ڿ��̴��� ���ڷ� �޾Ƶ��δ�
		const board_id = ${detail.board_id}; // out.print�ϴ°� �� ������ ���ڿ��� output
	</script>

	<script src="${sha256}"></script>
	<script src="${detailJS}"></script>
	<script src="${detailReplyJS}"></script>
</body>
</html>