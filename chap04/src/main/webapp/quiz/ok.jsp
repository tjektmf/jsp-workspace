<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ �Ϸ�</title>
</head>
<body>

<input id="saveInput" type="text" placeholder="���� �޸��ϼ�" value="" name="memo"/>
<button id="save">�޸� �����ϱ�</button>

<script>
const saveInput = document.getElementById("saveInput");
const saveBtn = document.getElementById("save");

saveBtn.addEventListener('click', (e)=>{
	location.href = '/chap04/quiz/memo.jsp?memo=' + saveInput.value;
	
});

</script>

</body>
</html>