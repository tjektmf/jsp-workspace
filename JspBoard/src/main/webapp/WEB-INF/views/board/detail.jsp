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
	
	<button id="delBtn2">삭제하기2</button>
	
	<br />

	<!-- 
	form을 통해 POST 방식으로 데이터를 ./delete을 통해 서블릿으로 전달함 
	보여주기 싫은 값은 input태그 타입 hidden으로 숨겨서 전달함
	
	delBtn, delForm 에 대한 정보는 JS파일에 들어있음 
	태그의 요소들 중 id 는 해당 태그를 변수화해서 사용할 때 사용되고
	name 은 파라미터의 이름으로써 사용함 name을 id로 혼동하여 사용하는 실수가 가끔 있음
	css, js 파일에서 id를 활용
	
	글을 삭제하려면, 즉 DB에서 한 줄을 삭제하려면 그 한 줄을 특정해주는 PK값인 board_id에 대한 정보가 있어야 하고
	무분별한 삭제를 방지하기 위해 board_password에 대한 정보도 있어야함
	이 두가지 값을 어트리뷰트에 실어보내야 하는데 비밀번호를 GET 방식을 사용해 파라미터로 보내면 보안상 문제가 있음
	그래서 input태그 hidden 속성을 이용해 POST 타입으로 보냄
	
	-->
	<form id="delForm" action="./delete" method="POST" >
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

	<!-- 
		form id를 이용하면 form tag 밖에서도 form에 실어서 data를 보낼 수 있다 
		마찬가지로 보여주기 어색하거나 보여주기 싫은 값은 type="hidden"
	-->
	<form id="replyForm" action="./reply/add" method="post">
		<input type="hidden" name="board_id" value="${detail.board_id}" />
	</form>



	<!--    <form id="modiForm" action="./modify" method="POST"></form>
   <form id="delForm" action="./delete" method="POST"></form> -->

	<c:url value="/resources/board/js/detail.js" var="detailJS" />
	<c:url value="/resources/board/js/sha256.js" var="sha256" />
	<c:url value="/resources/board/js/detailReply.js" var="detailReplyJS" />


	<script>
		const boardPassword = '${detail.board_password}'; 
		// 작은따옴표 붙어있으면 문자열, 안붙어있으면 문자열이더라도 숫자로 받아들인다
		// 근데 JS 인데 상관이 있나 ? 타입다르면 ==로 비교하면 되긴함
		const board_id = ${detail.board_id}; 
		// out.print하는곳 웹 페이지 문자열로 output
	</script>

	<script src="${sha256}"></script>
	<script src="${detailJS}"></script>
	<script src="${detailReplyJS}"></script>
</body>
</html>