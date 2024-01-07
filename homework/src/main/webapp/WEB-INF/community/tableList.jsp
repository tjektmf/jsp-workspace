<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="homework.DTO.FreeDTO, java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ㅎㅇㅎㅇ</title>
<link rel="stylesheet" href=".././resources/tableList.css" />
</head>
<body>
<div>
<a href="./newTable">글쓰러가기</a>
</div>
	<div id="gridTable">
		<div>no</div>
		<div class="mid">내용</div>
		<div>작성자</div>
		<div>추천</div>
		<!-- (List<FreeDTO>) 타입으로 다운캐스팅하면 FreeDTO 타입의 데이터가 리스트타입으로 저장되어 있는 상태임 -->
		<%
		for (FreeDTO free : (List<FreeDTO>) request.getAttribute("tableList")) {
			out.print(free);
		}
		%>


	</div>

</body>
</html>