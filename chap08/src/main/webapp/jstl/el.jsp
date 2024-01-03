<%@page import="java.sql.Struct"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="chap08.model.Student, java.util.ArrayList"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%
ArrayList<Student> stus = new ArrayList<>();

stus.add(new Student("A123", "김선", 20, 60, 65, 70));
stus.add(new Student("A124", "자바", 27, 60, 27, 82));
stus.add(new Student("A125", "이썬", 22, 89, 65, 20));
stus.add(new Student("A126", "도둑", 25, 60, 65, 18));
stus.add(new Student("A127", "카단", 32, 53, 65, 92));
stus.add(new Student("A128", "포타슘", 17, 50, 46, 70));

pageContext.setAttribute("stus", stus);

Student stu = new Student();
// db에서 학생 한명을 조회한 데이터라고 가정
stu.setStu_age(15);
stu.setStu_id("STU123");
stu.setStu_name("김멍멍");
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
		<li>JSP 에서 어트리뷰트에 실려있는 값들을 간단하게 꺼낼 수 있는 문법</li>
		<li>문법의 모양이 JS의 format string과 똑같이 생겨서 JSP 내부에서는 충돌이 발생한다</li>
		<li>어트리뷰트에 객체가 들어있는 경우 해당 객체의 getter를 통해 속성을 꺼내 사용할 수 있다</li>
		<li>여러 영역에 어트리뷰트가 같은 이름으로 등록되어 있는 경우 기본적으로 가장 좁은 범위의 어트리뷰트를 사용한다</li>
	</ul>

	<h5># EL로 객체를 호출해 사용하는 경우</h5>
	<ul>
		<li>객체를 그냥 출력하는 경우 해당 객체의 toString()을 호출해 사용</li>
		<li>해당 객체에 .을 찍고 속성을 호출하면 실제로는 해당 객체의 Getter 메서드를 호출해 사용한다</li>

		<li>${stu}</li>
		<!-- getter 메서드를 호출하므로 메서드에 오타가 있거나 private 등 못 읽어오는 상황이면 오류가 발생함 -->
		<li>${stu.stu_kor}</li>
		<li>${stu.stu_eng}</li>
		<li>${stu.stu_math}</li>
		<li>${stu.stu_name}</li>
		<li>${stu.stu_age}</li>
		<li>${stu.avg}</li>
	</ul>

	<h5># 반복문</h5>

	<table>
		<tr>
			<th>학번</th>
			<th>이름</th>
			<th>나이</th>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
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

	<h5># EL의 리터럴</h5>
	<ul>
		<li>정수 : ${123}, ${10*10}, ${123+456}</li>
		<li>실수 : ${123.456}, ${123.123*1.23}</li>
		<li>문자열 : ${'Hello'}, ${"문자열"}, ${"${ㅎ2}"}
		<li>boolean : ${true}, ${false}</li>
	</ul>

	<h5># EL의 연산자</h5>

	<ul>
		<li>산술 연산자 : +, -, *, /, %, mod</li>
		<li>비교 연산자 : ==, !=, eq, ne, lt, gt, le, ge, <, ></li>
		<!-- less than = lt, great than = gt, less than equal = le, great than equal = ge -->
		<li>논리 연산자 : and, or, not, &&, ||, !</li>
		<li>empty : 해당 값이 null 또는 ""일때 true</li>
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





	<core:set var="food" value="6개장1"></core:set>
	<script>
		const food = '육개장';
		console.log(`ㅎㅇㅎㅇ${food}`);
		console.log(`ㅎㅇㅎㅇ${'${food}'}`);
	</script>


</body>
</html>