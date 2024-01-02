<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>가격 변경</title>
</head>
<body>

<form action="./update" method="post">
<input type="text" name="bread_name" placeholder="빵 이름을 입력해주세요"/> <br />
<input type="number" name="bread_price" placeholder="변경 후 가격을 입력해"/><br /><br />
<button type="submit">가격 변경</button>



</form>

</body>
</html>