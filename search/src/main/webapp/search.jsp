<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

	<c:url value ="/employee/searchResult.jsp" var="searchURL"></c:url>
	<div>
		<form action="${searchURL}" id="searchForm" method="post"></form>
		검색 : 
		<input id="searchQueryField" type="text" name="searchQuery" form ="searchForm" />
		<select name="searchType" id="" form ="searchForm">
			<option value="first_name">first_name</option>
			<option value="last_name">last_name</option>
			<option value="department_name">department_name</option>
		</select>
	</div>
	
	<script>
	const searchQueryField = document.getElementById('searchQueryField');
	
	// HTMLForm
	const searchForm = document.getElementById('searchForm');
	// console.log(searchQueryField);
	console.log(searchForm);
	
	searchQueryField.addEventListener('keydown', (e)=>{
		// 기본 기능 제거함 탭키나 뭐 등등
		// e.preventDefault(); 
		console.log(e);
		// 'enter' 키코드는 13
		if(e.keyCode === 13){
			console.log('엔터');
			
			// 어떤 요소든 submit을 붙여서 정보를 보내는게 가능함
			// 엔터에 이벤트리스너 주면 따로 submit() 안해도 서밋이 됨
			// 여기서 값들이 정확한지 확인하고 요청 보내는 주소를 바꾸는게 가능
			searchForm.submit();
		}
	});
	</script>
	
</body>
</html>