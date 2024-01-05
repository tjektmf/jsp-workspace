<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
</head>
<body>
	<c:url value="/assets/img/cat.gif" var="cat"></c:url>

	<img src="${cat}" alt="cat" width="100" />
	<div>
		<input id="nm_pm_chk" name="nm_pm" type="checkbox" /> 30�� ���� �Ⱥ���
	</div>

	<script>
	const nmPm = document.querySelector('#nm_pm_chk');
	nmPm.addEventListener('click', (e)=>{
	
	// üũ�ڽ��� checked �޼��带 ���� üũ���θ� �� �� ����
	console.log(nmPm.checked);
	
	if(nmPm.checked===true){
		console.log('üũ��');
		
		// Ŭ���̾�Ʈ ������ ���� 30�� ��Ű �߰�
		document.cookie ="nmpm2=1; max-age=30; path=/chap09/quiz2";
		window.close();
		// location.href='nmpm.jsp'; // ���������� ������ 30�� ��Ű �߰�
	}
	
});

</script>



</body>
</html>