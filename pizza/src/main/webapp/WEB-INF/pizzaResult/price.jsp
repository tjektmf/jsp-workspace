<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<%
// attribute ��ü�� ������� Set�� �����ö� (java.util.Set<String>) �� ���� �ٿ�ĳ���� ������� 
// �⺻������ ���� ���� �� �ִ� Object Ÿ���̱� ����
// ������� �����µ� �̰� ������Ʈ Ÿ���� ��Ÿ������ ĳ���õƴٴ� ����
/*
out.print(String.format("<div>%s %s�� : %d�� </div>", "snowMedium",
		(java.util.Map<String, String>) request.getAttribute("result"), 100));

for (String emp : (java.util.Set<String>) request.getAttribute("result")) {
	out.print(String.format("<div> %s </div>", emp));
}
*/

java.util.Map<String, String> resultMap = (java.util.Map)request.getAttribute("result");


/*
for(int i=0; i<resultMap.size(); i++){
	out.print(String.format("<div>%s  %s</div>",resultMap.keySet() , resultMap.values()));
}*/


out.print(request.getAttribute("result"));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3>����� �;ߴ�</h3>
	<p>�������� ���� ��?</p>
	



</body>
</html>