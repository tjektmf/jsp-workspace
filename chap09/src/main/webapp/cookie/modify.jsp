<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    // ��Ű�� �׻� ��û�� ���ԵǾ� ������ (domain �� path �� �´� ��쿡 ���ؼ�)
    // ��Ű�� �ϳ��� �޴� �޼���� ���� kies�� �ϴ� �޾ƾ���
    Cookie[] cookies = request.getCookies();
    
    // ��Ű�� �ϳ��� ������ null �̰�츦 ����ؼ� if �߰�
    if(cookies != null){
    	for(Cookie cookie : cookies){
    		// setName �� �ȵ� name ���� �Ұ���, value ������ ����
    		String cname =	cookie.getName();
    		
    		if(cname.equals("age")){
    			cookie.setMaxAge(300); // ���� ����Ⱓ�� �����̴� ��Ű�� ����Ⱓ�� 5������ ����
    			cookie.setValue("3-7");
    			// ��û���κ��� ���޹��� ��Ű�� path ������ ����
    			// ������ ���� path�� �״�� ����� �Ұ����ϴ�
    			System.out.println("age path : "+cookie.getPath());
    			
    			// ���信 �Ǿ���� ���������� �ݿ���
    			response.addCookie(cookie);
    		} else if(cname.equals("fav")){
    			// ������ ������ �ٲٸ� ��Ű�� ������ �������� �����
    			// ��Ȯ�ϰ� ���� ��Ű�� ���� ���ؼ��� name�Ӹ� �ƴ϶� path ���� ��ġ�ؾ� �Ѵ�
    			// path�� �ٸ��� �ٸ� ��Ű�� �ν��Ѵ�
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