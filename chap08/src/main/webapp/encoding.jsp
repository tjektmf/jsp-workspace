<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ѱ� ����ϱ�</title>
</head>
<body>

	<h3># jsp�� �������� ���ڵ� ����</h3>

	<dl>
		<dt>1. meta �±��� charset</dt>
		<dd>�� �������� �д� Ŭ���̾�Ʈ�� �� �귯������ �� �������� �ؼ��� �� ����� charset ����</dd>
		<dt>2. contentType�� charset</dt>
		<dd>�� �������� �����ϴ� ������� ���� �� charset ����</dd>
		<dt>3. pageEncoding�� charset</dt>
		<dd>.jsp�� �ۼ��� �ڵ带 .java�� ��ȯ�� ���� charset</dd>
		<dt>4. ���� ���Ͽ��� ����ϰ� �ִ� charset</dt>
		<dd>Ctrl+S�� ��Ŭ������ ���� �ϵ忡 ������ �� ����ϴ� charset ���� ���� ��Ŭ�� �� properties���� Ȯ�� ����</dd>
		<dt>5. server.xml�� URLEncoding</dt>
		<dd>get ��� �Ķ���Ͱ� �ٽ� ���ڷ� ������ �� ����� charset�� ����</dd>
		<dt>6. request ��ü�� CharacterEncoding</dt>
		<dd>post ��� �Ķ���� ���� �ؼ��� �� ����� charset�� ����</dd>
	</dl>
	
	<h3># get ������� �Ķ���ͷ� �ѱ��� ������ ��</h3>
	
	<ol>
	<li>get ��� �Ķ���� ���� URL�� ���ԵǾ� ���޵ǰ� �� URL�� �ؼ��� ������ ����Ѵ�</li>
	<li>���� ���α׷��� �ؼ��� ����ϱ� ������ ������ ������ �ٲ�� �Ѵ�</li>
	<li>server.xml�� Connector�� URIEncoding="EUC-KR" �� �߰�</li>
	</ol>
	get : <input type="text" name="animal" value="ȣ����" form="form1"/>
	<input type="submit" value="����" form="form1"/>
	<form action="<%=request.getContextPath()%>/test" id="form1" method="get"></form>
	
	
	
	<hr />
	
	
	
	<h3># post ��� �Ķ���ͷ� �ѱ��� ������ ��</h3>
	
	<ol>
		<li>post ��� �Ķ���� ���� ��û��ü ���ο� �Ƿ��� ������ �����ϹǷ� URIEncoding�� ������ ���� ����</li>
		<li>request.setCharacterEncoding("EUC-KR")�� ��û ��ü�� ���ڵ� ����� �����ؼ� �ذ��� �� �ִ�</li>
		<li></li>
	
	</ol>
	
		post : <input type="text" name="animal" value="�巡��" form="form2"/>
	<input type="submit" value="����" form="form2"/>
	<form action="<%=request.getContextPath()%>/test" id="form2" method="post"></form>
	

</body>
</html>