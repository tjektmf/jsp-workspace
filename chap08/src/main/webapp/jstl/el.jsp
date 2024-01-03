<%@page import="java.sql.Struct"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="chap08.model.Student, java.util.ArrayList"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%
ArrayList<Student> stus = new ArrayList<>();

stus.add(new Student("A123", "�輱", 20, 60, 65, 70));
stus.add(new Student("A124", "�ڹ�", 27, 60, 27, 82));
stus.add(new Student("A125", "�̽�", 22, 89, 65, 20));
stus.add(new Student("A126", "����", 25, 60, 65, 18));
stus.add(new Student("A127", "ī��", 32, 53, 65, 92));
stus.add(new Student("A128", "��Ÿ��", 17, 50, 46, 70));

pageContext.setAttribute("stus", stus);

Student stu = new Student();
// db���� �л� �Ѹ��� ��ȸ�� �����Ͷ�� ����
stu.setStu_age(15);
stu.setStu_id("STU123");
stu.setStu_name("��۸�");
stu.setStu_kor(99);
stu.setStu_eng(95);
stu.setStu_math(98);

pageContext.setAttribute("stu", stu);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL</title>
</head>
<body>

	<h3># JSP Expression Language (EL)</h3>

	<ul>
		<li>JSP ���� ��Ʈ����Ʈ�� �Ƿ��ִ� ������ �����ϰ� ���� �� �ִ� ����</li>
		<li>������ ����� JS�� format string�� �Ȱ��� ���ܼ� JSP ���ο����� �浹�� �߻��Ѵ�</li>
		<li>��Ʈ����Ʈ�� ��ü�� ����ִ� ��� �ش� ��ü�� getter�� ���� �Ӽ��� ���� ����� �� �ִ�</li>
		<li>���� ������ ��Ʈ����Ʈ�� ���� �̸����� ��ϵǾ� �ִ� ��� �⺻������ ���� ���� ������ ��Ʈ����Ʈ�� ����Ѵ�</li>
	</ul>

	<h5># EL�� ��ü�� ȣ���� ����ϴ� ���</h5>
	<ul>
		<li>��ü�� �׳� ����ϴ� ��� �ش� ��ü�� toString()�� ȣ���� ���</li>
		<li>�ش� ��ü�� .�� ��� �Ӽ��� ȣ���ϸ� �����δ� �ش� ��ü�� Getter �޼��带 ȣ���� ����Ѵ�</li>

		<li>${stu}</li>
		<!-- getter �޼��带 ȣ���ϹǷ� �޼��忡 ��Ÿ�� �ְų� private �� �� �о���� ��Ȳ�̸� ������ �߻��� -->
		<li>${stu.stu_kor}</li>
		<li>${stu.stu_eng}</li>
		<li>${stu.stu_math}</li>
		<li>${stu.stu_name}</li>
		<li>${stu.stu_age}</li>
		<li>${stu.avg}</li>
	</ul>

	<h5># �ݺ���</h5>

	<table>
		<tr>
			<th>�й�</th>
			<th>�̸�</th>
			<th>����</th>
			<th>����</th>
			<th>����</th>
			<th>����</th>
		</tr>
		<core:forEach items="${stus}" var="student">
			<tr>
				<td>${student.stu_id}</td>
				<td>${student.stu_name}</td>
				<td>${student.stu_age}</td>
				<td>${student.stu_kor}</td>
				<td>${student.stu_eng}</td>
				<td>${student.stu_math}</td>
			</tr>
		</core:forEach>
	</table>

	<h5># EL�� ���ͷ�</h5>
	<ul>
		<li>���� : ${123}, ${10*10}, ${123+456}</li>
		<li>�Ǽ� : ${123.456}, ${123.123*1.23}</li>
		<li>���ڿ� : ${'Hello'}, ${"���ڿ�"}, ${"${��2}"}
		<li>boolean : ${true}, ${false}</li>
	</ul>

	<h5># EL�� ������</h5>

	<ul>
		<li>��� ������ : +, -, *, /, %, mod</li>
		<li>�� ������ : ==, !=, eq, ne, lt, gt, le, ge, <, ></li>
		<!-- less than = lt, great than = gt, less than equal = le, great than equal = ge -->
		<li>�� ������ : and, or, not, &&, ||, !</li>
		<li>empty : �ش� ���� null �Ǵ� ""�϶� true</li>
	</ul>

	<core:set var="a" value="72"></core:set>
	<core:set var="b" value="7"></core:set>
	<core:set var="f" value="bababa"></core:set>
	<core:set var="h" value="null"></core:set>
	<%pageContext.setAttribute("j", null); %>
	<div>${a+b},${a-b},${a*b}, ${a mod b}, ${a%b}</div>
	<!-- less than = lt, great than = gt, less than equal = le, great than equal = ge -->
	<div>${a == b},${a eq b},${a != b}, ${a ne b}, ${a < b}, ${10 lt 7},
		${a > b}, ${a gt b}</div>
	<div>${a==b and a%2==0 }, ${not (a==10)}</div>
	<div>${empty f}, ${empty g}, ${empty h}, ${empty j}</div>
	<div>${a%10 eq 0 ? a/10 : a/10+1}</div>
	<hr />





	<core:set var="food" value="6����1"></core:set>
	<script>
		const food = '������';
		console.log(`��������${food}`);
		console.log(`��������${'${food}'}`);
	</script>


</body>
</html>