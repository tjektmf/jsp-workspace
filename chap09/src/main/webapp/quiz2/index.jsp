<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h3># Quiz</h3>

	<ul>
		<li>�� �������� ������ �� ����â �ϳ� ��</li>
		<li>������ �̹��� �ϳ��� üũ�ڽ� ��ư�� ����</li>
		<li>üũ �ڽ��� üũ�ϰ� â�� ������ 30�� ���� �� �������� �����ϴ��� ����â�� ���� ����</li>
	</ul>
	
	<c:url value="/quiz2/promotion.jsp" var="pmURL"/>
	
	<!-- JSP ������������ EL�� ��Ű���� ���� ���� �� �� �ִ� -->
	<!-- üũ�ڽ� üũ�ϸ� value ���� 1�� ��Ű�߰��Ǹ鼭 if ���� �ߵ����� ���� -->
	<c:if test="${cookie.nmpm.value != '1'}">
	
   <script>
      // open�� �� ���� �� �� â�� �ν��Ͻ��� ��ȯ�Ѵ�
      const a = open('${pmURL}', '_blank', 'width=200,height=200');
      // a.close();
   </script>
	</c:if>

</body>
</html>