<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ㅇㅅㅇ</title>
</head>
<body>

	<h1>메모장</h1>


	<table border="2">
		<tr>
			<th>No.</th>
			<th>Title</th>
			<th>Writer</th>
			<th>Timestamp</th>
			<th>View</th>
		</tr>

		<c:forEach items="${boards}" var="board">
		<!-- 
			<script>const board = request.getAttribute("boards");</script>
			< % String board = request.getAttribute("boards"); % >
			위의 forEach 태그는 이런 코드와 같은 효과를 가지는데 JSTL 태그를 활용하면 
			코드 섞이는거 없이 쉽고 깔끔하게 어트리뷰트를 활용할 수 있기 때문에 사용한다
		-->
		
		<!-- 
		ApplicationServlet 클래스에서 매핑을 통해 BoardListService 클래스로 포워딩
		BoardListService 클래스에서 request를 통해 board/index.jsp로 값을 보내옴
		request.setAttribute("boards", boards);
		JSTL을 활용하면 저장된 어트리뷰트값을 쉽게 불러올 수 있다
		"boards" 라는 key 값에 boards 라는 value 값을 저장해 포워딩했고
		${key} 를 통해 해당 key 값에 해당하는 value 값을 불러올 수 있다  
		-->
			<tr>
				<td>${board.board_id}</td>
				<td><a href="./detail?board_id=${board.board_id}">${board.board_title}</a></td>
				<!-- 
				a태그를 통해 서블릿으로 보내버림 파라미터를 uri로 활용하는건 GET 방식이고 
				request.getMethod() 를 찍어보면 GET이 나오는걸 확인할 수 있음
				여기서 board_id는 DB에서 PK로 사용하는 데이터이기 때문에 가져가서 유용하게 활용가능함
				서블릿에서 매핑시 주소값에 GET POST 설정
				 -->
				<td>${board.board_writer}</td>
				<td>${board.write_date}</td>
				<td>${board.view_count}</td>
				<!-- 
				위에서 JSTL forEach 태그를 활용해 board 라는 변수 이름으로 ${boards} 값을 사용하기로함 
				뒤에 .을 찍으면 클래스에 포함된 메서드를 사용하듯이 게터 메서드를 자동으로 불러옴
				즉 board.board_id 는 board.getBoard_id() 와 같기 때문에 
				대소문자 생각해서 메서드를 정확하게 만들어 놓아야 한다
				-->
			</tr>
		</c:forEach>
		<!-- forEach 는 for 문처럼 데이터를 한줄씩 뽑아냄 items, var 두가지를 활용 -->
	</table>

	<button id="writeBtn">글쓰기</button>
	<!-- 
	이 버튼에 대한 정보는 JS 파일에 있음
	JS 파일로 보내면 자동완성기능이 있어 오타는 줄어들지만 변수명 중복 등 신경써야할 부분이 생김
	-->
	
	<!-- const indexJS = /resources/board/js/inde.js; 대충 이런뜻임 -->
	<c:url value="./write" var="writePageURL"></c:url>
	<script> const writePageURL = '${writePageURL}'; </script>
	
	<c:url value="/resources/board/js/inde.js" var="indexJS"></c:url>
	<script src="${indexJS}"></script>
	<!-- 
	<script src="/resources/board/js/inde.js"></script>
	이렇게 써도 되는데 JSTL 익숙해지자는 느낌으로 이런식으로 한듯?
	위에 둘다 JSTL을 활용해 경로를 변수에 저장해서 활용함
	-->

</body>
</html>