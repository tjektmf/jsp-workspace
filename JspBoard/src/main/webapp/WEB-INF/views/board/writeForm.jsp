<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�۾���</title>
</head>
<body>
<h1>�۾���</h1>

<!-- ./write �̷��ŷ� ���� ���������� �������� post ���̶� ���� Ȱ�� -->
<form action="./write" method="POST" id="writeForm">
���� : <input type="text" name="board_title" /><br />
�̸� : <input type="text" name="board_writer" /><br />
P W : <input type="password" name="board_password" /><br /> <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="board_content" rows="5" cols=""></textarea>
</form>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" form="writeForm">�۾���</button>&nbsp;&nbsp;
<button>�۸��</button>
</body>
</html>