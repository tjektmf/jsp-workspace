<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3># Http�� �񿬰Ἲ</h3>
	<ul>
		<li>HTTP�� ������ �ϰ��� Ŭ���̾�Ʈ���� ������ ���������</li>
		<li>������ ��ġ�� ���ٸ� �ش� Ŭ���̾�Ʈ�� ������ ������ Ŭ���̾�Ʈ�� ������ Ŭ���̾�Ʈ���� ������ �� ����</li>
	</ul>


	<h3># Http session �߱� ����</h3>


	<ol>
		<li>Ŭ���̾�Ʈ�� ���ʷ� �� ������ �����ϸ� ������ �ش� Ŭ���̾�Ʈ���� ����ID�� �߱��Ѵ�</li>
		<li>�߱޹��� ����ID�� Ŭ���̾�Ʈ���� �� ������ Ư�� �κ�(��Ű)�� ����ȴ� (���� IP�� �ٸ� �� ��������
			�����ϸ� ���ο� ����ID�� �߱޹���)</li>
		<li>���� �ش� Ŭ���̾�Ʈ�� �ش� ������ ��û�� ���� ������ ����ID�� ��û�� �Բ� �Ǿ� �����ϰ� �ȴ�</li>
		<li>������ �Ƿ��� ����ID�� Ŭ���̾�Ʈ�� ������ �� �ִ�</li>
		<li>����ID�� ���� �繰�� ���谰�� ������ �ϱ⵵ �ϸ� ���� ��Ʈ����Ʈ�� ������ �� �ش� ����ID�� ����� �����
		</li>
		<li>���� ��ü�� �ʹ� ���� ���� �����͸� �߰��ϴ� ���� ������ ������ ���Ͻ�ų �� �����Ƿ� �����ؾ� �Ѵ�</li>
		<li>����ID�� �⺻������ ������� �� �������� ����� �� �Բ� ��������� �����Ǿ� �ִ�</li>
		<li>���� ��Ʈ����Ʈ�� ���� �ð� ���� ��û�� ���� ������ ��������� �����Ǿ� �ִ�</li>
	</ol>

	<%
	// ��Ȱ���� ������ ����Ǵ� �ð��� ���� (���� : ��)
	int interval = 600;
	session.setMaxInactiveInterval(interval);
	%>

	<h3># ���� ���� ����</h3>

	<ul>
		<li>SESSION ID: <%=session.getId()%></li>
		<li>������ ������ �ð�: <%=new Date(session.getCreationTime())%></li>
		<li>���� �ֱٿ� �����ߴ� �ð�: <%=new Date(session.getLastAccessedTime())%></li>
		<li>��Ȱ���� ������ �����Ű�� �ð�: <%=session.getMaxInactiveInterval()%> sec</li>
	
	</ul>
	
	<button onclick="location.href='/chap04/session/closeSession.jsp'">���� ����</button>

</body>
</html>