<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>빵 추가</title>
</head>
<body>

<h3>빵 추가</h3>
	<form action="./add" method="post">
	빵 이름 : <input type="text" name="bread_name" /> <br />
	빵 가격 : <input type="number" name="bread_price" step="100" min="0" value="1000"/> <br /><br />
	<input type="submit" value="추가하기"/>
	</form>
	

</body>
</html>