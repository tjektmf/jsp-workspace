<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

	<c:url value ="/employee/searchResult.jsp" var="searchURL"></c:url>
	<div>
		<form action="${searchURL}" id="searchForm" method="post"></form>
		�˻� : 
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
		// �⺻ ��� ������ ��Ű�� �� ���
		// e.preventDefault(); 
		console.log(e);
		// 'enter' Ű�ڵ�� 13
		if(e.keyCode === 13){
			console.log('����');
			
			// � ��ҵ� submit�� �ٿ��� ������ �����°� ������
			// ���Ϳ� �̺�Ʈ������ �ָ� ���� submit() ���ص� ������ ��
			// ���⼭ ������ ��Ȯ���� Ȯ���ϰ� ��û ������ �ּҸ� �ٲٴ°� ����
			searchForm.submit();
		}
	});
	</script>
	
</body>
</html>