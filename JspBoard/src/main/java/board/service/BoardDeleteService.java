package board.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDAO;
import board.dao.DBConnector;
import board.dto.BoardDTO;

public class BoardDeleteService implements Service {

	BoardDAO dao = new BoardDAO();

	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) {

		int board_id = Integer.parseInt(request.getParameter("board_id"));
		String board_password = request.getParameter("board_password");
		System.out.println("id : " + board_id);
		System.out.println("pw : " + board_password);

		BoardDTO ori = dao.get(board_id);
		System.out.println("오리 : " + ori.getBoard_password());

		dao.delete(board_id);
		
		
		if (ori.getBoard_password().equals(board_password)) {
			
			return "/list";
		} else {
			return "/WEB-INF/views/board/deleteFail.jsp";
		}
		

		/*
		 * String sql = "delete from myboard where board_id = ?";
		 * 
		 * try (Connection conn = DBConnector.getConnection(); PreparedStatement pstmt =
		 * conn.prepareStatement(sql);) {
		 * 
		 * pstmt.setInt(1, board_id); pstmt.executeUpdate(); System.out.println("끗");
		 * return "/list";
		 * 
		 * } catch (SQLException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); return "/WEB-INF/views/board/deleteFail.jsp"; }
		 */
	}

}
