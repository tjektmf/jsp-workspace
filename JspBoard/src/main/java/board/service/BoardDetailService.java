package board.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDAO;
import board.dao.ReplyDAO;
import board.dto.BoardDTO;

public class BoardDetailService implements Service {

	BoardDAO boardDAO = new BoardDAO();
	ReplyDAO replyDAO = new ReplyDAO();

	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) {
		System.out.println(request.getMethod());
		// <a href="./detail?board_id=${board.board_id}">
		// a 태그를 통해 GET 방식으로 서블릿을 통해 포워딩

		int board_id = Integer.parseInt(request.getParameter("board_id"));
		// GET 방식으로 request 를 통해 DB에서 PK로 사용하는 board_id 값을 전달함

		// 쿠키는 특정쿠키 한개를 꺼낼 수는 없음 쿠키배열로 전부 꺼내야함
		// 스프링에선 특정쿠키 한개 꺼내는게 가능함ㅋㅋ
		Cookie[] cookies = request.getCookies();
		boolean exist = false;

		// 글 번호와 같은 이름을 지닌 쿠키가 존재하는지 여부를 체크
		// 해당 쿠키가 존재(plused 가 true)하면 조회수는 증가하지 않음
		if (cookies != null) {
			// 쿠키가 하나라도 있으면 그 안에 있는 쿠키를 꺼내고
			// 그 쿠키의 이름을 가져오는 메서드는 getName()을 활용해서 특정 이름을 가진 쿠키가 있는지 확인함
			for (Cookie cookie : request.getCookies()) {
				// 쿠키를 만들때 board_id 값을 사용해서 만듬
				if (cookie.getName().equals("" + board_id)) {
					// 존재함
					exist = true;
				}
			}
		}

		// 글 번호와 같은 이름이 쿠키가 조회된 적이 없다면 조회수를 증가시키고 쿠키를 만듬
		// 즉 쿠키가 존재하지 않는다면 조회수 올려주는 메서드가 작동하고 쿠키를 새로 만들라고 response 함
		if (!exist) {
			int row = boardDAO.plusView(board_id);
			// 쿠키를 만들라고 내가 새롭게 반응을 보내는거니까 response 매개변수를 사용해야함
			// 이거때문에 서비스 인터페이스에 매개변수를 추가함
			response.addCookie(new Cookie("" + board_id, "1"));

			// row < 1 이라는건 plusView 메서드가 board_id가 없을 때 -1을 반환하는걸 활용한 조건

			if (row < 1) {
				return "/WEB-INF/views/board/detailNotFound.jsp";
			}
		}

		BoardDTO detail = boardDAO.get(board_id);

		// 사실상 else값은 불가능하지만 혹시모르니 만들어놓음
		if (detail != null) {
			request.setAttribute("detail", detail);
			// 다른 테이블의 기본키를 이미 가지고 있으므로 그걸 활용함
			request.setAttribute("replies", replyDAO.getBoardReplies(board_id));
			return "/WEB-INF/views/board/detail.jsp";
		} else {
			return "/WEB-INF/views/board/detailNotFound.jsp";
		}

	}
}
