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
		out.print("alert('���� ����');");
		out.print("alert('�� �� �� �� �� ����� �� ����');");
 	}  %>

</script>


<input type="text" form="form1" name="deleteMenu" placeholder="������ �޴� �̸�"/>
<button type="submit" form="form1">�����ϱ�</button>
<form action="<%=request.getContextPath()%>/dbtest/delete" id="form1" method="get"></form>



</body>
</html>