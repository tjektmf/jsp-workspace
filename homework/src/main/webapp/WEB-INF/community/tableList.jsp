<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="homework.DTO.FreeDTO, java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��������</title>
<link rel="stylesheet" href=".././resources/tableList.css" />
</head>
<body>
<div>
<a href="./newTable">�۾�������</a>
</div>
	<div id="gridTable">
		<div>no</div>
		<div class="mid">����</div>
		<div>�ۼ���</div>
		<div>��õ</div>
		<!-- (List<FreeDTO>) Ÿ������ �ٿ�ĳ�����ϸ� FreeDTO Ÿ���� �����Ͱ� ����ƮŸ������ ����Ǿ� �ִ� ������ -->
		<%
		for (FreeDTO free : (List<FreeDTO>) request.getAttribute("tableList")) {
			out.print(free);
		}
		%>


	</div>

</body>
</html>