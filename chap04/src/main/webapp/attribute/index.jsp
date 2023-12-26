<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3># Attribute</h3>

	<ul>
		<li>Parameter : Client�� form���� �������� �������� ������ ������</li>
		<li>Attribute : �ϳ��� �������� �ٸ� �������� ������ �� �ִ� ������</li>
		<li>�� Attribute�� �������� ��ȿ�� ������ �����ϸ� �뵵�� �°� Ȱ���ؾ� �Ѵ�</li>
		<li>�����δ� application, session, request, page�� �ִ�</li>

	</ul>

	<h3># Attribute Scope</h3>

	<dl>
		<dt>1. application scope</dt>
		<dd>WAS�� �����س��� attribute. ������ ����Ǳ� ������ ��� �����Ǹ� ��� �������� ���� ���� (����
			static ����)</dd>
		<dt>2. session scope</dt>
		<dd>�ϳ��� ������ ����Ǳ� ������ �����Ǵ� attribute. �� Ŭ���̾�Ʈ���� ������ ������ ���� (��������
			�����ϴ� ���� ������)</dd>
		<dt>3. request scope</dt>
		<dd>�ϳ��� ��û�� ����Ǳ� ��(��û�� ���� ������ �ϱ� ��)���� �����Ǵ� attribute. forward,
			include�� ����Ǵ� ���� �����Ǳ� ������ ���� ó���� �����͸� �����ϴ� �뵵�� ���� ���ȴ� (�Ű� ���� ����)</dd>
		<dt>4. page scope</dt>
		<dd>�ش� JSP ������ ���ο����� ����� �� �ִ� attribute. forward, include�� �ٸ�
			�������� �Ѿ�� ��� ������� (���� ���� ����)</dd>
	</dl>

	<h3># ��Ʈ����Ʈ ����ϱ�</h3>

	<ul>
		<li>application : <%=application.getAttribute("food")%></li>
		<li><%out.print("application : "+ application.getAttribute("food")); %></li>
		<li>session : <%=session.getAttribute("food")%></li>
		<li>request : <%=request.getAttribute("food")%></li>
		<li>page : <%=pageContext.getAttribute("food")%></li>
	</ul>

	<input id="applicationInput" type="text" value="orange" name="food" />
	<button id="application">application�� ������ �߰��ϱ�</button>
	<br>

	<input id="sessionInput" type="text" value="orange" name="food" />
	<button id="session">session�� ������ �߰��ϱ�</button>
	<br>

	<input id="requestInput" type="text" value="orange" name="food" />
	<button id="request">request�� ������ �߰��ϱ�</button>
	<br>

	<input id="pageInput" type="text" value="orange" name="food" />
	<button id="page">page�� ������ �߰��ϱ�</button>
	<br>
	
	<hr />
	
	<div>
		<a href="/chap04/session/index.jsp">���� ��������</a>
	</div>

	<script>
	// �ڿ� scope=xxxx ���� �Ķ���͸� ���� ���Ƿ� ���� if���� ����ϱ� ����
	// &scope=application&babo=1 ���⼭ scope�� babo �Ѵ� ���Ƿ� ���� ����
	// http://localhost:1527/chap04/attribute/add.jsp?food=orange&scope=application&babo=1
	// ���� �ּҴ� �̷������� add.jsp ���� ? �ڷδ� ���� �Ķ���Ͱ����� ���� ���͵� ȭ���� �Ȱ���
	// location.href�� ���ο� �������� �̵��ϸ� �����丮�� ��ϵǴ� ��ü�� �Ӽ��̸�
	// ��� ����) location.href='abc.php';
	// location.replace()�� ���� �������� ���ο� �������� �����Ű�� �����丮�� ��ϵ��� �ʴ� �޼����̴�.
	// ��� ����) location.replace('abc.php');
	// replace�� ���� �������� ���ο� �������� ���� ����� ������ ���� �������� �̵��� �Ұ��ϸ�
	// ������ �ʿ��ϰų� �������� ���ư� �ʿ䰡 ���� ��� ����ϸ� ������
	
			
	const applicationBtn = document.getElementById("application");
	const applicationInput = document.getElementById("applicationInput");
	applicationBtn.addEventListener('click', (e)=>{
		location.href = '/chap04/attribute/add.jsp?food=' + applicationInput.value + '&scope=application&babo=1';
		
	});
	
	const sessionBtn = document.getElementById("session");
	const sessionInput = document.getElementById("sessionInput");
	sessionBtn.addEventListener('click', (e)=>{
		location.href = '/chap04/attribute/add.jsp?food=' + sessionInput.value + '&scope=session';
	});
	
	const requestBtn = document.getElementById("request");
	const requestInput = document.getElementById("requestInput");
	requestBtn.addEventListener('click', (e)=>{
		location.href = '/chap04/attribute/add.jsp?food=' + requestInput.value + '&scope=request';
	});
	
	const pageBtn = document.getElementById("page");
	const pageInput = document.getElementById("pageInput");
	pageBtn.addEventListener('click', (e)=>{
		location.href = '/chap04/attribute/add.jsp?food=' + pageInput.value + '&scope=page';
	});
	</script>

</body>
</html>