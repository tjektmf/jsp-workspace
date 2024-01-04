<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    // 쿠키는 항상 요청에 포함되어 도착함 (domain 과 path 가 맞는 경우에 한해서)
    // 쿠키를 하나만 받는 메서드는 없음 kies로 싹다 받아야함
    Cookie[] cookies = request.getCookies();
    
    // 쿠키가 하나도 없으면 null 이경우를 대비해서 if 추가
    if(cookies != null){
    	for(Cookie cookie : cookies){
    		// setName 은 안됨 name 수정 불가능, value 수정은 가능
    		String cname =	cookie.getName();
    		
    		if(cname.equals("age")){
    			cookie.setMaxAge(300); // 원래 만료기간이 세션이던 쿠키의 만료기간을 5분으로 설정
    			cookie.setValue("3-7");
    			// 요청으로부터 전달받은 쿠키는 path 정보가 없다
    			// 예전에 섰던 path를 그대로 쓰기는 불가능하다
    			System.out.println("age path : "+cookie.getPath());
    			
    			// 응답에 실어보내야 수정사항이 반영됨
    			response.addCookie(cookie);
    		} else if(cname.equals("fav")){
    			// 수명을 음수로 바꾸면 쿠키의 수명이 세션으로 변경됨
    			// 정확하게 같은 쿠키를 쓰기 위해서는 name뿐만 아니라 path 값도 일치해야 한다
    			// path가 다르면 다른 쿠키로 인식한다
    			cookie.setMaxAge(-1);
    			cookie.setPath("/chap09");
    			response.addCookie(cookie);
    		}
    	}
    	
    }
    
    response.sendRedirect(request.getContextPath()+"/cookie/index.jsp");
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>