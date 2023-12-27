package chap04.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/quiz2/register/")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// Servlet에서 application 영역 사용 ServletContext 를 사용함
		ServletContext application = req.getServletContext();
		// Servlet에서 session 영역 사용
		// req.getSession
		// 페이지 영역은 사용 불가능

		// Parameter는 웹에서 받아오므로 무조건 String으로 반환됨
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");

		// parameter의 값이 빈 값인지 체크할 때 null뿐만 아니라 빈 문자도 체크해야함
		// 회원가입에 뭔가 문제가 있으면 다시 index.jsp로 돌려보냄
		// 에러 발생시 return으로 끝내버림 return의 활용이 중요했음
		// 리다이렉트로 돌려보내면서 if문 등에 활용이 가능한 파라미터를 추가함
		// 원래 /chap04/quiz2/index.jsp 첫 화면에서는 error=1 이런 파라미터가 없기 때문에
		// 이런 데이터를 사용해 코드로 활용할 수 있다
		// 예를 들면 아래처럼 뭔가 문제가 있을때 메인화면으로 돌아가서 경고창을 띄워준다든지 하는 형식
		// 여기서 알아갈점은 리다이렉트로 보낼때 주소에 파라미터를 추가할 수 있다는 점과
		// 그 파라미터를 활용해 리다이렉트로 보내진 화면에서 코드로 활용할 수 있다는 점
		if (id == null || pw == null || id.equals("") || pw.equals("")) {
			resp.sendRedirect("/chap04/quiz2/index.jsp?error=1");
			return;
		}

		// id 중복 체크
		// 아래에서 application 객체에 setAttribute 를 통해 데이터를 입력하는데
		// application.getAttribute(id)에 널이 들어있다는건 데이터가 없다는 뜻이고
		// 널이 아니라는건 이미 같은 데이터가 들어가 있으므로 중복이라는 뜻이 됨
		// 여기서 바로 return; 을 사용해 더 이상의 코드진행을 막음 
		if (application.getAttribute(id) != null) {
			resp.sendRedirect("/chap04/quiz2/index.jsp?error=1&dup=1");
			return;
		}

		// 비밀번호 정규표현식
		// 이건 하든지 말든지 구글링하면 어차피 잘 함

		// id를 application 객체에 등록
		// 위의 중복체크와 널체크를 무사히 넘기면, 즉 유효한 값이면 application 객체에 등록함
		// 등록하고 리다이렉트로 인덱스로 보내버림 위의 경우와 다르게 파라미터에 에러를 추가하지 않았기 때문에
		// 리다이렉트로 인해 돌아간 화면에서도 에러 파라미터에 의한 코드가 발동하지 않음
		Map<String, Object> infoMap = new HashMap<>();
		infoMap.put("pw", pw);
		application.setAttribute(id, infoMap);
		resp.sendRedirect("/chap04/quiz2/index.jsp");

	}
}
