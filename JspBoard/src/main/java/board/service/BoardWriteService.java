package board.service;

import javax.servlet.http.HttpServletRequest;

import board.dao.BoardDAO;
import board.dto.BoardDTO;
import board.secure.SecureTools;

public class BoardWriteService implements Service {
	
	private static BoardWriteService instance = new BoardWriteService();
	
	public static BoardWriteService getInstance() {
		return instance;
	}
	private BoardWriteService() {}
	
	BoardDAO dao = new BoardDAO();

	@Override
	public String service(HttpServletRequest request) {

		String board_title = request.getParameter("board_title");
		String board_content = request.getParameter("board_content");
		String board_writer = request.getParameter("board_writer");
		String board_password = request.getParameter("board_password");

		BoardDTO dto = new BoardDTO();
		dto.setBoard_title(board_title);
		dto.setBoard_content(board_content);
		dto.setBoard_writer(board_writer);
		// setter 에서 hash 작업을 하면 db에서 값을 꺼내 조회할 때에도 hash 변환이 되므로 바람직하지 않음
		dto.setBoard_password(SecureTools.hashPassword(board_password));
		
		int result = dao.write(dto);
		
		
		
		// 필요한 경우 입력값에 대한 검사를 진행
		return "redirect::/";
	}
}
