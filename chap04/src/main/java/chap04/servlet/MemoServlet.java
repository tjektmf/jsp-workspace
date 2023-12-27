package chap04.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/quiz2/memo/*")
public class MemoServlet extends HttpServlet {

	// 기본적으로 오는건 get, 따로 설정을 해야 post
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletContext application = req.getServletContext();

		String uri = req.getRequestURI();
		String root = "/chap04/quiz2/memo/";

		String cmd = uri.substring(root.length());

		// cmd 에 맞춰서 포워딩할 페이지를 변경
		if (cmd.equals("main")) {
			// forward 시 webapp 이하의 경로를 사용해야 함
			// 맨 위의 메모 서블렛과 주소가 겹쳐서 quiz2 이하 폴더이름을 memo에서 memoView로 바꿈
			req.getRequestDispatcher("/quiz2/memoView/index.jsp").forward(req, resp);
		} else if (cmd.equals("add")) {
			// memoView/index.jsp으로 부터 받아옴
			String memo = req.getParameter("memo");
			HttpSession session = req.getSession();
			
			// 메모는 여러개 저장할 수 있어야 하므로 list를 이용해 계속 추가함
			// 로그인 중인 사용자의 정보를 꺼냄
			// 이미 존재하는 메모리스트가 없으면 새 메모리스트를 등록하고 있으면 기존에 존재하던 리스트를 꺼내 메모를 추가함
			Map<String, Object> infoMap = (Map) session.getAttribute("info");
			
			if (infoMap.get("memoList") == null) {
				List<String> newMemoList = new ArrayList<>();
				newMemoList.add(memo);
				infoMap.put("memoList", newMemoList);
			} else {
				List<String> memos = (List<String>) infoMap.get("memoList");
				memos.add(memo);
			}
			req.getRequestDispatcher("/quiz2/memoView/index.jsp").forward(req, resp);

		} else {
			resp.sendRedirect("/chap04/quiz2/index.jsp");
		}

	}

}
