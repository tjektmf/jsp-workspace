<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ㅇㅅㅇ/</title>
</head>
<body>

<!-- WEB-INF 하위에 집어넣으면 주소창으로 접속 불가능 -->
	<h2>File Include</h2>

	<ol>
		<li>JSP include : 포워드처럼 request와 response를 다른 jsp로 그대로 전달해 처리를 하고
			그 결과를 다시 가져오는 기능으로 다른 페이지로 잠깐 갔다가 다시 돌아오는 기능이기 때문에 include하는 페이지에서는
			pageScope 값을 사용할 수 없다</li>
		<li>File include : 해당 파일을 컴파일하기 전에 통째로 현재 페이지에 포함해버리는 방식으로 다른 파일과
			하나로 합쳐진 후 컴파일되기 때문에 pageScope가 유효하다</li>
	</ol>
	
	<script src="./include1/index.jsp">JSP include</script>
	<script src="./include2/index.jsp">File include</script>
	
</body>
</html>