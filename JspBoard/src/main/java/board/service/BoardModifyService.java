package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDAO;
import board.dto.BoardDTO;

public class BoardModifyService implements Service {

	BoardDAO dao = new BoardDAO();

	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) {

		try {
			int board_id = Integer.parseInt(request.getParameter("board_id"));

			BoardDTO dto = new BoardDTO();

			dto.setBoard_id(board_id);
			dto.setBoard_title(request.getParameter("board_title"));
			dto.setBoard_content(request.getParameter("board_content"));

			if (dao.modify(dto) < 1) {
				throw new Exception("던져");
			}

			return "redirect::/detail?board_id=" + board_id;
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect::/";
		}

	}

}
