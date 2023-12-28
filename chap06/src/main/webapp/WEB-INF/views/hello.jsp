<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>헬로헬라</title>
</head>
<body>

<h3># 뷰 페이지를 통해 WEB-INF 이하에 넣으면 경로를 통한 파일 직접 접근이 불가능해짐 </h3>
<p>포워드를 통해서만 접근이 가능함</p>

	<%
	// attribute 객체에 집어넣은 Set을 가져올때 (java.util.Set<String>) 을 통해 다운캐스팅 해줘야함 
	// 기본적으로 모든걸 담을 수 있는 Object 타입이기 때문
	// 노란줄이 나오는데 이게 오브젝트 타입이 셋타입으로 캐스팅됐다는 뜻임
	for (String emp : (java.util.Set<String>) request.getAttribute("result")) {
		out.print(String.format("<div> %s </div>", emp));
	}
	%>

</body>
</html>