<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>사원 검색</title>
</head>
<body>

	<h3># Search</h3>

	<ul>
		<li>검색을 통해 사원들 조회</li>
		<li>검색할 수 있는 컬럼 : first_name, last_name, department_name</li>
		<li>검색어를 직접 입력하고 검색버튼을 누르면 사원들이 조회되어야 함</li>
	</ul>
	
	<form action="./show/firstName" method="post" id="form1"></form>
	<input type="text" placeholder="first_name을 입력해" form="form1" name="first_name"/>
	<button type="submit" form="form1">검색하기</button> <br /><br />
	
	<form action="./show/lastName" method="post" id="form2"></form>
	<input type="text" placeholder="last_name을 입력해" form="form2" name="last_name"/>
	<button type="submit" form="form2">검색하기</button><br /><br />
	
	<form action="./show/departmentName" method="post" id="form3"></form>
	<input type="text" placeholder="department_name을 입력해" form="form3" name="department_name"/>
	<button type="submit" form="form3">검색하기</button>

</body>
</html>