<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
// ���������� ��Ű �߰��ϱ�


// ��Ű�� ���� ���ڿ�
Cookie cookie = new Cookie("nmpm", "1");
cookie.setMaxAge(30);
cookie.setHttpOnly(true); // HttpOnly�� JS ������ ����� �� ���� �Ѵ�(����)

response.addCookie(cookie);


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
</head>
<body>

<script>
window.close();
</script>


</body>
</html>