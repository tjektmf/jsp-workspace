<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>글쓰기</title>
</head>
<body>
<h1>글쓰기</h1>

<!-- ./write 이런거로 대충 보내버리고 서블릿에서 post 값이랑 같이 활용 -->
<form action="./write" method="POST" id="writeForm">
제목 : <input type="text" name="board_title" /><br />
이름 : <input type="text" name="board_writer" /><br />
P W : <input type="password" name="board_password" /><br /> <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="board_content" rows="5" cols=""></textarea>
</form>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" form="writeForm">글쓰기</button>&nbsp;&nbsp;
<button>글목록</button>
</body>
</html>