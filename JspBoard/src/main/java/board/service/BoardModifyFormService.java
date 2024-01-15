package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDAO;
import board.dto.BoardDTO;

public class BoardModifyFormService implements Service {

	BoardDAO dao = new BoardDAO();

	// 비밀번호 입력 후 수정버튼 눌렀을때 비밀번호가 맞다면 서블릿을 통해 여기로 넘어옴 GET방식의 /modify
	// detail.jsp 로부터 location.href = './modify?board_id=' + board_id; 이동함
	// uri에 파라미터를 직접 추가해 보내는 형식이 GET 방식이고 이렇게 보내온 데이터를
	// 지금 여기 BoardModifyFormService 클래스에서 request.getParameter("board_id") 형식으로 사용가능함
	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) {

		try {
			int board_id = Integer.parseInt(request.getParameter("board_id"));

			// DB에서 PK인 board_id 값을 이용해 해당 데이터를 불러와서 어트리뷰트에 저장해서 다음 처리할 곳으로 포워딩
			BoardDTO oldData = dao.get(board_id);

			// 수정하기 위한 사전작업인 비밀번호 확인 후 데이터존재유무를 확인했으니
			// 실제로 수정을 하는 폼으로 포워딩
			if (oldData != null) {
				request.setAttribute("oldData", oldData);
				return "/WEB-INF/views/board/modifyForm.jsp";
			} else {
				return "redirect::/";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect::/";
		}
	}
}
