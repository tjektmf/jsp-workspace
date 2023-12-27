<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>요청 경로 설정하기</title>
</head>
<body>

	<h3># webapp 이하의 파일에 요청보내기</h3>

	<ul>
		<li>/프로젝트명/폴더명/파일명</li>
		<li>프로젝트 이름에 해당하는 부분을 ContextPath 라고 부름</li>
		<li>ContextPath는 기본적으로 프로젝트 이름으로 설정되어 있지만 수정도 가능함</li>
	</ul>

	<h3># Servlet으로 요청보내기</h3>
	<ul>
		<li>해당 서블릿에 @webServlet() 으로 부여된 URL을 통해 요청을 보냄(접속함)</li>
		<li>*를 사용해 여러 경로를 하나의 서블릿으로 처리하는 것도 가능</li>

	</ul>

	<h3># Forward 경로 설정하기</h3>
	<ul>
		<li>다음으로 처리를 맡은 .jsp로 이어지는 경로를 제공해야 함</li>
		<li>webapp 아래의 실제 파일 위치 경로를 전달해야 한다</li>
	</ul>

	<h3># 리다이렉트 경로 설정하기</h3>
	<ul>
		<li>클라이언트가 다시 요청을 보내야 하는 경로를 제공해야 한다 ex) 실패하고 재도전</li>
		<li>ContextPath가 포함된 경로를 사용해야 한다</li>
	</ul>
	<!-- 상대경로를 쓰는 경우 내가 이곳에 접속하는데 사용했던 URL의 상대경로로 요청을 보냄 -->
	<a href="./test1.html">test.html</a>
	<img src="http://192.168.0.66:9000/chap05/path/pen2.jpg" alt="" width="100px" />

</body>
</html>