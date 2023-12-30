<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>update</h3>

<form action="<%=request.getContextPath()%>/dbtest/update" id="form1" method="get"></form>


<input type="number" form="form1" name="number" placeholder="메뉴 번호"/> <br /><br />
<input type="text" form="form1" name="name" placeholder="변경할 메뉴의 이름" /><br /><br />
<input type="number" form="form1" name="price" placeholder="변경할 메뉴의 가격"/><br /><br />
<input type="text" form="form1" name="size" placeholder="변경할 메뉴의 크기"/><br />
<br /><p>변경하지 않을 경우에도 그대로 입력</p>
<button type="submit" form="form1">데이터 변경</button>

</body>
</html>