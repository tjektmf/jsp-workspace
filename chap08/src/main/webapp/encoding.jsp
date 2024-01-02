<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>한글 사용하기</title>
</head>
<body>

	<h3># jsp의 여러가지 인코딩 설정</h3>

	<dl>
		<dt>1. meta 태그의 charset</dt>
		<dd>이 페이지를 읽는 클라이언트의 웹 브러우저가 이 페이지를 해석할 때 사용할 charset 설정</dd>
		<dt>2. contentType의 charset</dt>
		<dd>이 서블릿에서 응답하는 결과물의 종류 및 charset 설정</dd>
		<dt>3. pageEncoding의 charset</dt>
		<dd>.jsp로 작성한 코드를 .java로 변환할 때의 charset</dd>
		<dt>4. 현재 파일에서 사용하고 있는 charset</dt>
		<dd>Ctrl+S로 이클립스를 통해 하드에 저장할 때 사용하는 charset 현재 파일 우클릭 후 properties에서 확인 가능</dd>
		<dt>5. server.xml의 URLEncoding</dt>
		<dd>get 방식 파라미터가 다시 문자로 합쳐질 때 사용할 charset을 설정</dd>
		<dt>6. request 객체의 CharacterEncoding</dt>
		<dd>post 방식 파라미터 값을 해석할 때 사용할 charset을 설정</dd>
	</dl>
	
	<h3># get 방식으로 파라미터로 한글을 보냈을 때</h3>
	
	<ol>
	<li>get 방식 파라미터 값은 URL에 포함되어 전달되고 그 URL의 해석은 서버가 담당한다</li>
	<li>서버 프로그램이 해석을 담당하기 때문에 서버의 설정을 바꿔야 한다</li>
	<li>server.xml의 Connector에 URIEncoding="EUC-KR" 을 추가</li>
	</ol>
	get : <input type="text" name="animal" value="호랑이" form="form1"/>
	<input type="submit" value="전송" form="form1"/>
	<form action="<%=request.getContextPath()%>/test" id="form1" method="get"></form>
	
	
	
	<hr />
	
	
	
	<h3># post 방식 파라미터로 한글을 보냈을 때</h3>
	
	<ol>
		<li>post 방식 파라미터 값은 요청객체 내부에 실려서 서버에 도착하므로 URIEncoding의 영향을 받지 않음</li>
		<li>request.setCharacterEncoding("EUC-KR")로 요청 객체의 인코딩 방식을 설정해서 해결할 수 있다</li>
		<li></li>
	
	</ol>
	
		post : <input type="text" name="animal" value="드래곤" form="form2"/>
	<input type="submit" value="전송" form="form2"/>
	<form action="<%=request.getContextPath()%>/test" id="form2" method="post"></form>
	

</body>
</html>