<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    // ��Ű�� �� �������� �����ϴ� ���̱� ������ ���ڿ��� ������ �� �ִ�
    Cookie cookie = new Cookie("age", "21-50"); // 1. �⺻ ��Ű (�Ⱓ�� �������� ������ ������ ����ñ��� ������ ����ó��)
    
    Cookie cookie2 = new Cookie("fav", "drama"); // 2. ���� �Ⱓ�� ������ ��Ű
    
    cookie2.setMaxAge(600); // ������ second
    cookie2.setHttpOnly(true); // JS���� �� ��Ű�� ������� ���ϵ��� �Ѵ�(���Ȼ� �ʿ�)
    cookie2.setPath("/chap09"); // �ش� ��Ű�� ����Ǵ� ������ ����
    cookie2.setDomain("localhost"); // ���� �������� ������ �� ��� �ǹ̰� ����
    cookie2.setValue("comedy"); // value�� ������, name�� ������ �� ����
    
    // ��Ű�� ����(response)�� �Ǿ� ������ Ŭ���̾�Ʈ���� �ݿ��ȴ�
    response.addCookie(cookie);
    response.addCookie(cookie2);
    response.sendRedirect(request.getContextPath()+"/cookie/index.jsp");
    
    %>
    
