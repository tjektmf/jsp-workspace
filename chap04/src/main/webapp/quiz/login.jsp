<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<%

request.getRequestDispatcher("/quiz/ok.jsp").forward(request, response);
//	List<Member> mems = application.getAttribute("members");
String[] getId = new String[100];
String[] getPw = new String[100];
boolean real = false;

for (int i = 0; i < 100; i++) {
	//for (int j = 0; j < i; j++) {

	if (application.getAttribute("id" + i) == null
	//	&& application.getAttribute("id" + i) != application.getAttribute("id" + j)
	) {
		real = true;
	}
	//	}
	if (real) {
		getId[i] = request.getParameter("id");
		getPw[i] = request.getParameter("pw");
		application.setAttribute("id" + i, getId[i]);
		application.setAttribute("pw" + i, getPw[i]);
		//	request.getRequestDispatcher("/quiz/index.jsp").forward(request, response);
	}
}
for (int i = 0; i < 100; i++) {
	if (getId[i] != null) {

		if (request.getParameter("id") == application.getAttribute(getId[i])
		&& request.getParameter("pw") == application.getAttribute(getPw[i])) {
	request.getRequestDispatcher("/quiz/ok.jsp").forward(request, response);
		} else {
	out.println("뭔가 잘못됨");
	//request.getRequestDispatcher("/quiz/ok.jsp").forward(request, response);
		}
	}
}
/*
String id = request.getParameter("id");
application.setAttribute("id", id);

String pw = request.getParameter("pw");
application.setAttribute("pw", pw);
*/
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>여긴 로그인이야</title>
</head>
<body>

</body>
</html>