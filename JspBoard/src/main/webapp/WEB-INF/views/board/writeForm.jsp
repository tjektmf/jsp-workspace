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
글 제목 : <input type="text" name="board_title" /><br />
글쓴사람 : <input type="text" name="board_writer" />
비밀번호 : <input type="password" name="board_password" /><br />
<textarea name="board_content" rows="" cols=""></textarea>
</form>
<button type="submit" form="writeForm">글쓰기</button>
<button>글목록</button>
</body>
</html>