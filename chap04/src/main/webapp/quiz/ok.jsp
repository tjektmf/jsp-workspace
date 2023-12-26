<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입 완료</title>
</head>
<body>

<input id="saveInput" type="text" placeholder="맘껏 메모하쇼" value="" name="memo"/>
<button id="save">메모 저장하기</button>

<script>
const saveInput = document.getElementById("saveInput");
const saveBtn = document.getElementById("save");

saveBtn.addEventListener('click', (e)=>{
	location.href = '/chap04/quiz/memo.jsp?memo=' + saveInput.value;
	
});

</script>

</body>
</html>