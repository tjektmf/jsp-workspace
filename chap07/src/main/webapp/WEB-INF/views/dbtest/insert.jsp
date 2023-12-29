<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert</title>
</head>
<body>
	<h3>여긴 인서트야</h3>
	<input type="text" form="form1" placeholder="coffee_name" name="name"/>
	<br />
	<input type="number" form="form1" placeholder="coffee_price" name="price" />
	<br />
	<input type="text" form="form1" placeholder="coffee_size" name="size"/>
	<br />
	<button type="submit" form="form1">data insert</button>
	
<form action="<%out.print(request.getContextPath());%>/dbtest/insert" id="form1" method="get">
	</form>
	
</body>
</html>