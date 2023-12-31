<%@page import="java.sql.Struct"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="chap08.model.Student, java.util.ArrayList"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%
ArrayList<Student> stus = new ArrayList<>();

stus.add(new Student("A123", "沿識", 20, 60, 65, 70));
stus.add(new Student("A124", "切郊", 27, 60, 27, 82));
stus.add(new Student("A125", "戚純", 22, 89, 65, 20));
stus.add(new Student("A126", "亀杵", 25, 60, 65, 18));
stus.add(new Student("A127", "朝舘", 32, 53, 65, 92));
stus.add(new Student("A128", "匂展酬", 17, 50, 46, 70));

pageContext.setAttribute("stus", stus);

Student stu = new Student();
// db拭辞 俳持 廃誤聖 繕噺廃 汽戚斗虞壱 亜舛
stu.setStu_age(15);
stu.setStu_id("STU123");
stu.setStu_name("沿雇雇");
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
		<li>JSP 拭辞 嬢闘軒坂闘拭 叔形赤澗 葵級聖 娃舘馬惟 襖馨 呪 赤澗 庚狛</li>
		<li>庚狛税 乞丞戚 JS税 format string引 業旭戚 持移辞 JSP 鎧採拭辞澗 中宜戚 降持廃陥</li>
		<li>嬢闘軒坂闘拭 梓端亜 級嬢赤澗 井酔 背雁 梓端税 getter研 搭背 紗失聖 襖鎧 紫遂拝 呪 赤陥</li>
		<li>食君 慎蝕拭 嬢闘軒坂闘亜 旭精 戚硯生稽 去系鞠嬢 赤澗 井酔 奄沙旋生稽 亜舌 措精 骨是税 嬢闘軒坂闘研 紫遂廃陥</li>
	</ul>

	<h5># EL稽 梓端研 硲窒背 紫遂馬澗 井酔</h5>
	<ul>
		<li>梓端研 益撹 窒径馬澗 井酔 背雁 梓端税 toString()聖 硲窒背 紫遂</li>
		<li>背雁 梓端拭 .聖 啄壱 紗失聖 硲窒馬檎 叔薦稽澗 背雁 梓端税 Getter 五辞球研 硲窒背 紫遂廃陥</li>

		<li>${stu}</li>
		<!-- getter 五辞球研 硲窒馬糠稽 五辞球拭 神展亜 赤暗蟹 private 去 公 石嬢神澗 雌伐戚檎 神嫌亜 降持敗 -->
		<li>${stu.stu_kor}</li>
		<li>${stu.stu_eng}</li>
		<li>${stu.stu_math}</li>
		<li>${stu.stu_name}</li>
		<li>${stu.stu_age}</li>
		<li>${stu.avg}</li>
	</ul>

	<h5># 鋼差庚</h5>

	<table>
		<tr>
			<th>俳腰</th>
			<th>戚硯</th>
			<th>蟹戚</th>
			<th>厩嬢</th>
			<th>慎嬢</th>
			<th>呪俳</th>
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

	<h5># EL税 軒斗群</h5>
	<ul>
		<li>舛呪 : ${123}, ${10*10}, ${123+456}</li>
		<li>叔呪 : ${123.456}, ${123.123*1.23}</li>
		<li>庚切伸 : ${'Hello'}, ${"庚切伸"}, ${"${ぞ2}"}
		<li>boolean : ${true}, ${false}</li>
	</ul>

	<h5># EL税 尻至切</h5>

	<ul>
		<li>至綬 尻至切 : +, -, *, /, %, mod</li>
		<li>搾嘘 尻至切 : ==, !=, eq, ne, lt, gt, le, ge, <, ></li>
		<!-- less than = lt, great than = gt, less than equal = le, great than equal = ge -->
		<li>轄軒 尻至切 : and, or, not, &&, ||, !</li>
		<li>empty : 背雁 葵戚 null 暁澗 ""析凶 true</li>
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





	<core:set var="food" value="6鯵舌1"></core:set>
	<script>
		const food = '整鯵舌';
		console.log(`ぞしぞし${food}`); // 6鯵舌1
		console.log(`ぞしぞし${'${food}'}`); // 整鯵舌
	</script>


</body>
</html>