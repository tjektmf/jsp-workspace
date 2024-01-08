package board.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDAO;
import board.dto.BoardDTO;

public class BoardListService implements Service {

	// 싱글톤 왜 이런 구조인지를 알아야함
	private static BoardListService instance = new BoardListService();

	public static BoardListService getInstance() {
		return instance;
	}

	// 무분별한 객체생성을 막기 위해 사용하기 때문에 private 으로 생성자 사용을 막아버림
	private BoardListService() {

	}

	BoardDAO dao = new BoardDAO();

	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) {

		List<BoardDTO> boards = dao.getList();
		request.setAttribute("boards", boards);
		return "/WEB-INF/views/board/index.jsp";
	}

}
