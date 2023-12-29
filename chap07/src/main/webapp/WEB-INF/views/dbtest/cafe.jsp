<%@page import="chap07.DTO.CafeDTO, java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="<%out.print(request.getContextPath()); %>/resources/dbtest/css/cafeList.css" />
</head>
<body>

	<h3>여기가 카페</h3>

	<div class="cafe-list">
		<%
		Object coffee = request.getAttribute("coffee");
		if (coffee != null) {
			for (CafeDTO coco : (List<CafeDTO>) coffee) {
				out.print(coco.getDivRow());
			}

		} else {
			out.print("<div>데이터 없음</div>");
		}
		%>


	</div>

</body>
</html>