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
		out.print("alert('����� �Է���')");
 	} else if(request.getRequestURI().contains("error=2")){ 
	 out.print("alert('DB�� ���� ��������')");
 } %>

</script>


<input type="text" form="form1" name="delete" placeholder="������ �޴� �̸�"/>
<button type="submit" form="form1">������ ������</button>
<form action="<%=request.getContextPath()%>/dbtest/delete" id="form1" method="get"></form>



</body>
</html>