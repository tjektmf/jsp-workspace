<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<%
// attribute 객체에 집어넣은 Set을 가져올때 (java.util.Set<String>) 을 통해 다운캐스팅 해줘야함 
// 기본적으로 모든걸 담을 수 있는 Object 타입이기 때문
// 노란줄이 나오는데 이게 오브젝트 타입이 셋타입으로 캐스팅됐다는 뜻임
/*
out.print(String.format("<div>%s %s판 : %d원 </div>", "snowMedium",
		(java.util.Map<String, String>) request.getAttribute("result"), 100));

for (String emp : (java.util.Set<String>) request.getAttribute("result")) {
	out.print(String.format("<div> %s </div>", emp));
}
*/

java.util.Map<String, String> resultMap = (java.util.Map)request.getAttribute("result");


/*
for(int i=0; i<resultMap.size(); i++){
	out.print(String.format("<div>%s  %s</div>",resultMap.keySet() , resultMap.values()));
}*/


out.print(request.getAttribute("result"));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3>여기로 와야댐</h3>
	<p>오늘점심 피자 ㄱ?</p>
	



</body>
</html>