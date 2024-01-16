<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ㅇㅅㅇ/</title>
</head>
<body>
	<h2>ㅇㅅㅇ/</h2>
	<a href="./list">뒤로가기</a>
	<br />
	<hr />
	<!-- 
	uriMapping.put("GET:/detail", new BoardDetailService()); 
	서블릿을 통해 위의 주소로 매핑해서 BoardDetailService 클래스로 들어갔다가
	/WEB-INF/views/board/detail.jsp 의 주소로 리턴되었고
	request.setAttribute("detail", detail); 를 통해 어트리뷰트에 값을 실어왔음 
	JSTL 문법인 ${detail} 을 통해 BoardDTO detail = dao.get(board_id); 
	
	index.jsp 에서는 BoardListService 를 통해 포워딩되면서 어트리뷰트에 실어올 때 
	키값으로 board 라는 이름을 사용했기 때문에 board.board_id 이런식으로 사용했지만
	
	detail.jsp 에서는 BoardDetailService 를 통해 포워딩되면서 어트리뷰트에 실어올 때
	키값으로 detail 을 사용했기 때문에 detail.board_id 이런식으로 사용해야함
	BoardDTO detail; 에서 만든 인스턴스(board_id)의 게터 세터 메서드를 사용하기 때문에 
	detail.board_id 형식으로 사용해야함 
	
	-->
	글 제목 :
	<input type="text" value="${detail.board_title}" readonly />
	<br /> 쓴 사람 :
	<input type="text" value="${detail.board_writer}" readonly /> <br />
	조회수 :
	${detail.view_count} 작성일 : ${detail.write_date}
	<br />
	<textarea rows="10" cols="30" readonly>${detail.board_content}</textarea>
	<br />
<hr />
	<input id="inputPassword" type="password" name="board_password" placeholder="글삭할때 비밀번호"><br />
	<br />
	<button id="modiBtn">수정하기</button>
	<button id="delBtn">삭제하기</button>
	<!-- 
	<button id="delBtn2">삭제하기2</button>
	 -->
	<br />

	<!-- 
	form을 통해 POST 방식으로 데이터를 ./delete을 통해 서블릿으로 전달함 
	보여주기 싫은 값은 input태그 타입 hidden으로 숨겨서 전달함
	
	-->
	<form id="delForm" action="./delete" method="POST">
		<input type="hidden" name="board_id" value="${detail.board_id}">
		<input type="hidden" name="check_password" value="${detail.board_password}"> 
		<input id="hiddenPassword" type="hidden" name="board_password">
	</form>


	<c:forEach items="${replies}" var="reply">
		<div>[${reply.reply_writer}] ${reply.reply_content}
			${reply.reply_date}</div>
	</c:forEach>

	<hr />



	<div id="replyWriteDiv">
		<textarea name="reply_content" id="replyContent" rows="2" cols="50"
			form="replyForm" placeholder="댓글이야"></textarea>
		<br />
		ID <input id="replyWriter" type="text" name="reply_writer" form="replyForm" />
		PW <input id="replyPassword"type="password" name="reply_password" form="replyForm" />
		<button id="replyWriteBtn" form="replyForm">댓글 쓰기</button>

	<!-- 	<button>댓글 삭제</button>  -->
		<br /> 

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
		const boardPassword = '${detail.board_password}'; // ''따움표 붙어있으면 문자열, 안붙어있으면 문자열이더라도 숫자로 받아들인다
		const board_id = ${detail.board_id}; // out.print하는곳 웹 페이지 문자열로 output
	</script>

	<script src="${sha256}"></script>
	<script src="${detailJS}"></script>
	<script src="${detailReplyJS}"></script>
</body>
</html>