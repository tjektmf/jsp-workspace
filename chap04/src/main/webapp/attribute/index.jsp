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
		<li>Parameter : Client의 form에서 서버측의 서블릿으로 보내는 데이터</li>
		<li>Attribute : 하나의 서블릿에서 다른 서블릿으로 전달할 수 있는 데이터</li>
		<li>각 Attribute는 종류별로 유효한 범위가 존재하며 용도에 맞게 활용해야 한다</li>
		<li>종류로는 application, session, request, page가 있다</li>

	</ul>

	<h3># Attribute Scope</h3>

	<dl>
		<dt>1. application scope</dt>
		<dd>WAS에 저장해놓는 attribute. 서버가 종료되기 전까지 계속 유지되며 모든 서블릿에서 접근 가능 (전역
			static 변수)</dd>
		<dt>2. session scope</dt>
		<dd>하나의 세션이 만료되기 전까지 유지되는 attribute. 각 클라이언트마다 각자의 세션을 가짐 (서버에서
			제공하는 개인 보관함)</dd>
		<dt>3. request scope</dt>
		<dd>하나의 요청이 만료되기 전(요청에 대한 응답을 하기 전)까지 유지되는 attribute. forward,
			include가 진행되는 동안 유지되기 때문에 다음 처리로 데이터를 전달하는 용도로 많이 사용된다 (매개 변수 느낌)</dd>
		<dt>4. page scope</dt>
		<dd>해당 JSP 페이지 내부에서만 사용할 수 있는 attribute. forward, include로 다른
			페이지로 넘어가는 경우 사라진다 (지역 변수 느낌)</dd>
	</dl>

	<h3># 어트리뷰트 출력하기</h3>

	<ul>
		<li>application : <%=application.getAttribute("food")%></li>
		<li><%out.print("application : "+ application.getAttribute("food")); %></li>
		<li>session : <%=session.getAttribute("food")%></li>
		<li>request : <%=request.getAttribute("food")%></li>
		<li>page : <%=pageContext.getAttribute("food")%></li>
	</ul>

	<input id="applicationInput" type="text" value="orange" name="food" />
	<button id="application">application에 데이터 추가하기</button>
	<br>

	<input id="sessionInput" type="text" value="orange" name="food" />
	<button id="session">session에 데이터 추가하기</button>
	<br>

	<input id="requestInput" type="text" value="orange" name="food" />
	<button id="request">request에 데이터 추가하기</button>
	<br>

	<input id="pageInput" type="text" value="orange" name="food" />
	<button id="page">page에 데이터 추가하기</button>
	<br>
	
	<hr />
	
	<div>
		<a href="/chap04/session/index.jsp">세션 보러가기</a>
	</div>

	<script>
	// 뒤에 scope=xxxx 값은 파라미터를 대충 임의로 만들어서 if문에 사용하기 위함
	// &scope=application&babo=1 여기서 scope와 babo 둘다 임의로 만든 값임
	// http://localhost:1527/chap04/attribute/add.jsp?food=orange&scope=application&babo=1
	// 실제 주소는 이런식으로 add.jsp 이후 ? 뒤로는 전부 파라미터값으로 뭐가 나와도 화면은 똑같음
	// location.href는 새로운 페이지로 이동하며 히스토리가 기록되는 객체의 속성이며
	// 사용 예시) location.href='abc.php';
	// location.replace()는 기존 페이지를 새로운 페이지로 변경시키며 히스토리가 기록되지 않는 메서드이다.
	// 사용 예시) location.replace('abc.php');
	// replace는 현재 페이지를 새로운 페이지로 덮어 씌우기 때문에 이전 페이지로 이동이 불가하며
	// 보안이 필요하거나 이전으로 돌아갈 필요가 없는 경우 사용하면 좋을듯
	
			
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