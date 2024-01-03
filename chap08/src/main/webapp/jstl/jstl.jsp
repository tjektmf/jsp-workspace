<%@page import="java.util.Collections"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL</title>
</head>
<body>

	<h3># JSTL (JSP Standard Tag Library)</h3>

	<ul>
		<li>JSP ���� �ڹ� �ڵ带 ����� �� �ڵ尡 �ʹ� ������������ ������ Ŀ���� �±� ���̺귯��</li>
		<li>�� �ʿ��� ���� ���̴� �ڹ� �������� html �±׿� ������ �������� ����� �� �ִ� ����� �����Ѵ�</li>
		<li>�ڹ��� ��� ����� ����� �� �ִ� ���� �ƴ����� �� �������� ����⿡�� ����� ��ɵ��� �±� ��������
			�����Ǿ� �ִ�</li>
		<li>Maven Repository���� �ٿ�ε��� �� �ִ�</li>
		<li>taglib �������� �߰��� �� ����ؾ� �Ѵ�</li>
	</ul>

	<h3># JSTL core</h3>
	<dl>
		<dt>c:set</dt>
		<dd>�� ������ setAttribute�� ���ϰ� �����Ͽ� ����� �� �ִ� �±�</dd>

		<dt>c:if</dt>
		<dd>if ���� �����ϰ� �� �� �ִ� �±׷� else if �� else �� ����</dd>

		<dt>c:choose, c:when, c:otherwise</dt>
		<dd>if, else if, else ó�� ����� �� �ִ� �±�</dd>

		<dt>c:forEach</dt>
		<dd>for ���� �����ϰ� �� �� �ִ� �±׷� ���ڸ� ���� �ݺ��� ���� �ְ�, ������� ������ �ݺ��� ���� ����</dd>

		<dt>c:forTokens</dt>
		<dd>������ ���ڿ��� split�� ����� �ݺ��� �����ϴ� ����</dd>

		<dt>c:url</dt>
		<dd>��θ� ����� �� �˾Ƽ� contextPath�� �߰����ִ� ����</dd>


	</dl>

	<%=request.getContextPath()%>/chap05/123
	<c:url value="/chap05/123"></c:url>
	<hr />

	<%
	application.setAttribute("fruit", "�簡");
	session.setAttribute("fruit", "���");
	request.setAttribute("fruit", "�޷�");
	pageContext.setAttribute("fruit", "�ְ�");
	%>

	<c:set var="snack" value="����" scope="application"></c:set>
	<c:set var="snack" value="ĭ��" scope="session"></c:set>
	<c:set var="snack" value="������" scope="request"></c:set>
	<c:set var="snack" value="���" scope="page"></c:set>
	<c:set var="snack" value="����"></c:set>
	<!-- ������ �������� �������� �� -->

	<h5># JSP ���������� attribute �� ���� ����� �� �ִ� ����� ������(EL)</h5>
	<div>�׳� ���� : ${fruit} (�⺻������ ���� ����� ������ ���� ���)</div>
	<div>applicationScope : ${applicationScope.fruit}</div>
	<div>sessionScope : ${sessionScope.fruit}</div>
	<div>
		requestScope :
		<%=request.getAttribute("fruit")%></div>
	<div>pageScope : ${pageScope.fruit}</div>
	<div>application : ${applicationScope.snack}</div>
	<div>session : ${sessionScope.snack}</div>
	<div>request : ${requestScope.snack}</div>
	<div>page : ${pageScope.snack}</div>
	<div>Ŀ�� : ${coffee}</div>

	<h5># attribute �� ����Ǿ� �ִ� ���� Ȱ���� if ���� ���</h5>

	<c:if test="${coffee=='Ŀ��'}">
		<div>if ���� �����</div>
	</c:if>



	<!-- c:set �� �ܼ� ���� ���� -->
	<c:set var="num" value="15"></c:set>

	<!-- �̰� if ���̶� ����� �����ε� ���� �ִ� if �� �׳� boolean ���� -->
	<c:choose>
		<c:when test="${num>10}">
			<div>1</div>
		</c:when>
		<c:when test="${num>0}">
			<div>2</div>
		</c:when>
		<c:when test="${num>-10}">
			<div>3</div>
		</c:when>
		<c:otherwise>
			<div>6</div>
		</c:otherwise>
	</c:choose>

	<h5># ���ϴ� Ƚ����ŭ �ݺ�</h5>


	<c:forEach begin="0" end="9" var="i">
		<li id="list-item${i}">${i}��°������</li>
	</c:forEach>

	<table>
		<c:forEach begin="0" step="2" end="10" var="i">
			<!-- for(int i=0 ; i<11 ; i=i+2 -->
			<tr>
				<td>${i}</td>
				<td>${i+1}</td>
				<td>${i+2}</td>
			</tr>
		</c:forEach>
	</table>

	<h5># �迭, ����Ʈ ���� ���������� �����鼭 �ݺ�(Iterable)</h5>

	<%
	String name = "ds";
	String[] coffees = { "americano", "cafe latte", "russiano", "vanilla latte", "Ŀ��" };
	pageContext.setAttribute("coffees", coffees);
	pageContext.setAttribute("name", name);

	ArrayList<String> foods = new ArrayList<>();
	pageContext.setAttribute("foods", foods);

	foods.add("����");
	foods.add("ġŲ");
	foods.add("�쵿");
	foods.add("����");
	foods.add("����");

	Collections.sort(foods);
	%>

	<c:forEach items="${coffees}" var="co">
		<div>${co}</div>
	</c:forEach>

	<c:forEach items="${foods}" var="food">
		<div>${food}</div>
	</c:forEach>


	<h3># �ݺ��ϸ鼭 varStatus Ȯ���ϱ�</h3>

	<ul>
		<li>varStatus.index : ���� �ε����� Ȯ���� �� ���� (�� ��°����, 0���� ����)</li>
		<li>varStatus.count : ���� ī��Ʈ�� Ȯ���� �� �ִ� (�� ������, 1���� ����)</li>
		<li>varStatus.first : ù ��°�� �� true</li>
		<li>varStatus.last : �������� �� true</li>
		<li>varStatus.begin : ���۰��� ������ ���</li>
		<li>varStatus.end : ������ ���� ������ ���</li>
		<li>varStatus.step : �������� ������ ���</li>
		<li>varStatus.current : ���� ��</li>
	</ul>


	<c:forEach items="${foods}" var="food" varStatus="v">
		<c:choose>
			<c:when test="${v.first}">
				<div class="first" style="color: red;">${v.index}��:${food}(����
					${v.count}��)</div>
			</c:when>
			<c:when test="${v.last}">

				<div class="last" style="color: green;">${v.index}��:${food}
					(���� ${v.count}��)</div>
			</c:when>

			<c:otherwise>
				<div class="mid" style="color: yellow;">${v.index}��:${food}
					(���� ${v.count}��)</div>
			</c:otherwise>
		</c:choose>

		<div>${v.index}��:${food}(���� ${v.count}��)</div>
	</c:forEach>


	<h5>c:forTokens</h5>
	<c:set var="animals" value="pig/#dog/god/cat#king"></c:set>
	<!-- c:set ���� ������ var �� delims ���� ���ø��ؼ� �ϳ��� ���  -->
	<c:forTokens items="${animals}" delims="/" var="animals">
		<div>${animals}</div>
	</c:forTokens>

	<h5># url ����ϰ� �����</h5>
	<ul>
		<li><%=request.getContextPath()%>/abc/123</li>
		<li><c:url value="/abc/123"></c:url></li>
		<li>��ο� �Ķ���� �߰� : /abc/123?taste=choco&color=black</li>

		<li>
			<c:url value="abc/123/add" var="myurl2">
				<c:param name="employee_id" value="101"></c:param>
				<c:param name="department_id" value="140"></c:param>
			</c:url>
		</li>
	</ul>
	
	<!-- c:url�� var�� �����ϸ� �ش� ��ΰ� �信 ��µ��� �ʰ� ��Ʈ����Ʈ�� ��ϵ�
	myURL2�� ���� ���÷��� c:url�� ����ߴ��� �信 �ڵ� ������ ��°�� ������� ��ĭ���� ���� -->
	<c:url value="abc/123/aaa" var="myUrl1"></c:url>
	<a href="${myURL1}">��ũ</a>
	<a href="${myURL2}">��ũ</a>


</body>
</html>