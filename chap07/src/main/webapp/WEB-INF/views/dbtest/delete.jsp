<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3> delete </h3>
<script>
<%
	if((int)request.getAttribute("errorNumber")==0){
		out.print("alert('삭제 실패');");
		out.print("alert('한 번 할 때 좀 제대로 좀 하자');");
 	}  %>

</script>


<input type="text" form="form1" name="deleteMenu" placeholder="삭제할 메뉴 이름"/>
<button type="submit" form="form1">삭제하기</button>
<form action="<%=request.getContextPath()%>/dbtest/delete" id="form1" method="get"></form>



</body>
</html>