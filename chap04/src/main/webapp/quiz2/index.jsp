<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>quiz2</title>
</head>
<body>

	<h3># �䱸����</h3>

	<ul>
		<li>���̵�� ��й�ȣ�� �Է��ϰ� �α��� ��ư�� ���� �α����� �� �� �ִ�</li>
		<li>ȸ�������� ���̵�� ��й�ȣ�� �Է��ϸ� �Ϸ��(�ߺ�üũ�� �ؾ��ϸ�, ���� ������ application�� ���)</li>
		<li>�α��ο� ������ ����� ������ �����Ǵ� ���� �α����� ��� ������</li>
		<li>�α��� �� ����� ���ο� �޸� ����� �� �ְ�, ���� �ۼ��� �޸� �� �� ����</li>
		<li>������ ��������� �� ��� ȸ������ �� �޸� ������� ������</li>
		<li>������ ������ ������ ������ ��� ������ quiz ���� �ؿ� ����</li>
	</ul>

	<button onclick="location.href='/chap04/quiz2/loginForm.jsp';">�α����Ϸ�����</button>
	<button onclick="location.href='/chap04/quiz2/registerForm.jsp';">ȸ������</button>
	
	<h3># ��� ��Ʈ����Ʈ</h3>
	
	<% 
		
		// scope.getAttributeNames() : �ش� ������ ��� ��Ʈ����Ʈ �̸����� ���� �� �ִ� ��ü�� ��ȯ
		java.util.Enumeration<String> names = application.getAttributeNames();
		
		// ��Ҹ� ������ ������ �����鼭 true, �̷��� �ۿ� ����
		while(names.hasMoreElements()){
			String name = names.nextElement();
			
			out.print(String.format("<li>%s = %s</li>", name, application.getAttribute(name)));
		}
		
	%>


	<script>
		<%-- jsp �ּ� 
		redirect�� ����� ���������� index.jsp�� �ڵ带 �����ٵ� �׶� �Ʒ� if���� ���� ���â�� ���
		--%>
	<% if (request.getParameter("error") != null) { 
		if(request.getParameter("dup") != null){
			out.print("alert('�ߺ���')");
		} else{
			out.print("alert('�ߺ����ƴѵ� ����')");
		}
	}
	%>
		
	</script>

</body>
</html>