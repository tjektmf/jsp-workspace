<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������/</title>
</head>
<body>
<h2>detail good</h2>
<a href="./list">�ڷΰ���</a> <br />
<hr />

�� ���� : <input type="text" value="${detail.board_title}" readonly/> <br />
�۾���� : <input type="text"  value="${detail.board_writer}"readonly/>
��ȸ�� : ${detail.view_count} �ۼ��� : ${detail.write_date}<br />
<textarea rows="10" cols="30"readonly>${detail.board_content}</textarea>

</body>
</html>