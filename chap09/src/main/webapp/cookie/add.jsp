<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    // 쿠키는 웹 브라우저에 저장하는 값이기 때문에 문자열만 저장할 수 있다
    Cookie cookie = new Cookie("age", "21-50"); // 1. 기본 쿠키 (기간을 설정하지 않으면 브라우저 종료시까지 유지됨 세션처럼)
    
    Cookie cookie2 = new Cookie("fav", "drama"); // 2. 만료 기간을 설정한 쿠키
    
    cookie2.setMaxAge(600); // 단위는 second
    cookie2.setHttpOnly(true); // JS에서 이 쿠키를 사용하지 못하도록 한다(보안상 필요)
    cookie2.setPath("/chap09"); // 해당 쿠키가 적용되는 범위를 설정
    cookie2.setDomain("localhost"); // 남의 도메인을 설정할 수 없어서 의미가 없음
    cookie2.setValue("comedy"); // value를 변경함, name은 변경할 수 없음
    
    // 쿠키는 응답(response)에 실어 보내야 클라이언트측에 반영된다
    response.addCookie(cookie);
    response.addCookie(cookie2);
    response.sendRedirect(request.getContextPath()+"/cookie/index.jsp");
    
    %>
    
