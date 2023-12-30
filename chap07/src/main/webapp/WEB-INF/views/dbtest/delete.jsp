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
	if(request.getParameter("error")!=null){
		out.print("alert('제대로 입력해')");
 	} else if(request.getRequestURI().contains("error=2")){ 
	 out.print("alert('DB에 없는 데이터임')");
 } %>

</script>


<input type="text" form="form1" name="delete" placeholder="삭제할 메뉴 이름"/>
<button type="submit" form="form1">삭제할 데이터</button>
<form action="<%=request.getContextPath()%>/dbtest/delete" id="form1" method="get"></form>



</body>
</html>