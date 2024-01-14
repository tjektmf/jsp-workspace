<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������</title>
</head>
<body>

	<h1>�޸���</h1>


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
			���� forEach �±״� �̷� �ڵ�� ���� ȿ���� �����µ� JSTL �±׸� Ȱ���ϸ� 
			�ڵ� ���̴°� ���� ���� ����ϰ� ��Ʈ����Ʈ�� Ȱ���� �� �ֱ� ������ ����Ѵ�
		-->
		
		<!-- 
		ApplicationServlet Ŭ�������� ������ ���� BoardListService Ŭ������ ������
		BoardListService Ŭ�������� request�� ���� board/index.jsp�� ���� ������
		request.setAttribute("boards", boards);
		JSTL�� Ȱ���ϸ� ����� ��Ʈ����Ʈ���� ���� �ҷ��� �� �ִ�
		"boards" ��� key ���� boards ��� value ���� ������ �������߰�
		${key} �� ���� �ش� key ���� �ش��ϴ� value ���� �ҷ��� �� �ִ�  
		-->
			<tr>
				<td>${board.board_id}</td>
				<td><a href="./detail?board_id=${board.board_id}">${board.board_title}</a></td>
				<!-- 
				a�±׸� ���� �������� �������� �Ķ���͸� uri�� Ȱ���ϴ°� GET ����̰� 
				request.getMethod() �� ���� GET�� �����°� Ȯ���� �� ����
				���⼭ board_id�� DB���� PK�� ����ϴ� �������̱� ������ �������� �����ϰ� Ȱ�밡����
				�������� ���ν� �ּҰ��� GET POST ����
				 -->
				<td>${board.board_writer}</td>
				<td>${board.write_date}</td>
				<td>${board.view_count}</td>
				<!-- 
				������ JSTL forEach �±׸� Ȱ���� board ��� ���� �̸����� ${boards} ���� ����ϱ���� 
				�ڿ� .�� ������ Ŭ������ ���Ե� �޼��带 ����ϵ��� ���� �޼��带 �ڵ����� �ҷ���
				�� board.board_id �� board.getBoard_id() �� ���� ������ 
				��ҹ��� �����ؼ� �޼��带 ��Ȯ�ϰ� ����� ���ƾ� �Ѵ�
				-->
			</tr>
		</c:forEach>
		<!-- forEach �� for ��ó�� �����͸� ���پ� �̾Ƴ� items, var �ΰ����� Ȱ�� -->
	</table>

	<button id="writeBtn">�۾���</button>
	<!-- 
	�� ��ư�� ���� ������ JS ���Ͽ� ����
	JS ���Ϸ� ������ �ڵ��ϼ������ �־� ��Ÿ�� �پ������ ������ �ߺ� �� �Ű����� �κ��� ����
	-->
	
	<!-- const indexJS = /resources/board/js/inde.js; ���� �̷����� -->
	<c:url value="./write" var="writePageURL"></c:url>
	<script> const writePageURL = '${writePageURL}'; </script>
	
	<c:url value="/resources/board/js/inde.js" var="indexJS"></c:url>
	<script src="${indexJS}"></script>
	<!-- 
	<script src="/resources/board/js/inde.js"></script>
	�̷��� �ᵵ �Ǵµ� JSTL �ͼ������ڴ� �������� �̷������� �ѵ�?
	���� �Ѵ� JSTL�� Ȱ���� ��θ� ������ �����ؼ� Ȱ����
	-->

</body>
</html>