<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>quiz2</title>
</head>
<body>

	<h3># 요구사항</h3>

	<ul>
		<li>아이디와 비밀번호를 입력하고 로그인 버튼을 눌러 로그인을 할 수 있다</li>
		<li>회원가입은 아이디와 비밀번호만 입력하면 완료됨(중복체크는 해야하며, 가입 정보는 application에 등록)</li>
		<li>로그인에 성공한 사람은 세션이 유지되는 동안 로그인이 계속 유지됨</li>
		<li>로그인 한 사람은 새로운 메모를 등록할 수 있고, 전에 작성한 메모도 볼 수 있음</li>
		<li>서버를 재시작했을 때 모든 회원정보 및 메모가 사라져도 괜찮음</li>
		<li>페이지 개수에 제한은 없으며 모든 내용은 quiz 폴더 밑에 만듦</li>
	</ul>

	<button onclick="location.href='/chap04/quiz2/loginForm.jsp';">로그인하러가기</button>
	<button onclick="location.href='/chap04/quiz2/registerForm.jsp';">회원가입</button>
	
	<h3># 모든 어트리뷰트</h3>
	
	<% 
		
		// scope.getAttributeNames() : 해당 영역의 모든 어트리뷰트 이름들을 꺼낼 수 있는 객체를 반환
		java.util.Enumeration<String> names = application.getAttributeNames();
		
		// 요소를 가지고 있으면 꺼내면서 true, 이렇게 밖에 못씀
		while(names.hasMoreElements()){
			String name = names.nextElement();
			
			out.print(String.format("<li>%s = %s</li>", name, application.getAttribute(name)));
		}
		
	%>


	<script>
		<%-- jsp 주석 
		redirect로 여기로 돌려보내면 index.jsp의 코드를 읽을텐데 그때 아래 if문을 통해 경고창을 띄움
		--%>
	<% if (request.getParameter("error") != null) { 
		if(request.getParameter("dup") != null){
			out.print("alert('중복임')");
		} else{
			out.print("alert('중복은아닌데 실패')");
		}
	}
	%>
		
	</script>

</body>
</html>