<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��� �˻�</title>
</head>
<body>

	<h3># Search</h3>

	<ul>
		<li>�˻��� ���� ����� ��ȸ</li>
		<li>�˻��� �� �ִ� �÷� : first_name, last_name, department_name</li>
		<li>�˻�� ���� �Է��ϰ� �˻���ư�� ������ ������� ��ȸ�Ǿ�� ��</li>
	</ul>
	
	<form action="./show/firstName" method="post" id="form1"></form>
	<input type="text" placeholder="first_name�� �Է���" form="form1" name="first_name"/>
	<button type="submit" form="form1">�˻��ϱ�</button> <br /><br />
	
	<form action="./show/lastName" method="post" id="form2"></form>
	<input type="text" placeholder="last_name�� �Է���" form="form2" name="last_name"/>
	<button type="submit" form="form2">�˻��ϱ�</button><br /><br />
	
	<form action="./show/departmentName" method="post" id="form3"></form>
	<input type="text" placeholder="department_name�� �Է���" form="form3" name="department_name"/>
	<button type="submit" form="form3">�˻��ϱ�</button>

</body>
</html>