<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3># JSP</h3>

	<ul>
		<li>Java Server Pages(JSP)</li>
		<li>���� �� �������� �����ϱ� ���� Java API</li>
		<li>HTML�ȿ� �ڹ� �ڵ带 Ȱ���Ͽ� ��Ȳ�� ���� ���ϴ� �� �������� ���� �� �ִ�</li>
	</ul>

	<h3># Web Server(Apache)</h3>

	<ul>
		<li>��û�� ���� URI�� �ش��ϴ� �˸��� �ڿ��� �����ϴ� ���α׷�</li>
		<li>.html ������ ��û -> .html ������ ����</li>
		<li>�׸� ������ ��û -> �׸� ������ ����</li>
		<li>���� ������ ó��</li>
	</ul>

	<h3># Web Application Server, WAS(Apache-Tomcat)</h3>

	<ul>
		<li>.jsp ������ ��û -> Java �ؼ� �� ���� -> .html ���� ���� -> ����</li>
		<li>�ܼ� ������ �ƴ� ��Ȳ�� ���� ��ȭ�ϴ� ���� ������ ó���� ����Ѵ�</li>
		<li>Apache-Tomcat���� Tomcat�� JSP�� �ؼ��� ����ϴ� ���α׷��̴�</li>
		<li></li>
		<li></li>
	</ul>

	<%-- JSP �ּ� --%>
	<%-- JSP �ּ� --%>
	<%-- 
		<%  %> : �ش� ���� ���ο��� �ڹ� �ڵ带 ����� �� �ִ� (�޼��� ������ ����)
		<%= %> : �ڹٿ� �ִ� ���� HTML�� ����� �� �ִ� (out.print()�� ����);
		<%! %> : �޼��带 ������ �� �ִ� (Ŭ���� ������ �ν��Ͻ� ����)
		<%@ %> : ���� �������� ������ �� �ִ�, ���� �������� ������ ����
	 --%>

	<%
	String str = "hello, jsp ";
	String firstName = "Smith";

	for (int i = 0; i < 5; i++) {
		System.out.println(str + i);
	}
	out.print("<div>" + str + "</div>");
	out.print(rabbit());

	// Java���� �� �������� ���� ������ �� �ִ�	
	// DB���� ���� �޾Ƽ� ����ϴ°� JS���� �Ұ���
	%>

	<%!public String rabbit() {
		// <pre> : �� ������ ������ �ؽ�Ʈ�� ����� �״�� ������ �� �ִ� �±�
		return "<pre>" + " /)/)\n" + "(' ')\n" + "( ><)</pre>";

	}%>
	
	<!--  �Ʒ��� �ΰ��� ���� �ڵ�� Smith�� ����� -->
	<% 
		out.print("<div id=\"" + firstName + "\">" + firstName + "</div>");
	%>
	
	<div id="<%=firstName%>"><%=firstName%></div>
	
	
	<h3># .jsp ������ ó�� ����</h3>
	
	<ol>
		<li>.jsp ������ �켱 .java ���Ϸ� ��ȯ�� (1�� ������)</li>
		<li>��ȯ�� .java ������ �������Ѵ� (2�� ������)</li>
		<li>�����ϵ� ������� �� ���ؽ�Ʈ(Tomcat)�� ��ϵǾ� ������� ��û�� ��ٸ���</li>
		<li>����ڰ� ��û�ϸ� �� ���ؽ�Ʈ�� ��ϵ� ������� �����Ͽ� �����Ѵ�</li>
	</ol>
	
	

</body>
</html>