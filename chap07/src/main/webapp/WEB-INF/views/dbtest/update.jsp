<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>update</h3>

<form action="<%=request.getContextPath()%>/dbtest/update" id="form1" method="get"></form>


<input type="number" form="form1" name="number" placeholder="�޴� ��ȣ"/> <br /><br />
<input type="text" form="form1" name="name" placeholder="������ �޴��� �̸�" /><br /><br />
<input type="number" form="form1" name="price" placeholder="������ �޴��� ����"/><br /><br />
<input type="text" form="form1" name="size" placeholder="������ �޴��� ũ��"/><br />
<br /><p>�������� ���� ��쿡�� �״�� �Է�</p>
<button type="submit" form="form1">������ ����</button>

</body>
</html>