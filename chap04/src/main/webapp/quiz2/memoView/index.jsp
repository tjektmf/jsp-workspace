<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �޸��</title>
</head>
<body>

	<h1>�޸�</h1>

	<div>

		<%
		java.util.Map<String, Object> infoMap = (java.util.Map) session.getAttribute("info");
		java.util.List<String> memoList = (java.util.List) infoMap.get("memoList");

		if (memoList == null) {
			out.print("<div>memoList�� ������� �γ�</div>");
		} else {

			for (String memo : memoList) {
				out.print(String.format("<div class=\"memo\">%s</div>", memo));
			}
		}
		%>

	</div>

	<form action="./add" method="post">
		<input name="memo" type="text" />
		<button>�߰�</button>
	</form>

</body>
</html>