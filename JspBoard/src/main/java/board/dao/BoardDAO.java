package board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import board.dto.BoardDTO;

public class BoardDAO {

	public int write(BoardDTO dto) {
		String sql = "insert into myboard(board_id, board_title, board_content, "
				+ "board_password, board_writer) values (myboard_id_seq.nextval, ?, ?, ?, ?)";

		try (DBSession session = DBConnector.getSession(); 
				PreparedStatement pstmt = session.prepareStatement(sql);) {
			pstmt.setString(1, dto.getBoard_title());
			pstmt.setString(2, dto.getBoard_content());
			pstmt.setString(3, dto.getBoard_password());
			pstmt.setString(4, dto.getBoard_writer());

			return pstmt.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 1;
		}

	}

	public List<BoardDTO> getList() {
		String sql = "select board_id, board_title, board_writer, view_count, write_date from myboard order by board_id desc";
		
		List<BoardDTO> list = new ArrayList<>();

		try (DBSession session = DBConnector.getSession(); 
				PreparedStatement pstmt = session.prepareStatement(sql);) {
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {

				BoardDTO dto = new BoardDTO();
				dto.setBoard_id(rs.getInt("board_id"));
				dto.setBoard_title(rs.getString("board_title"));
				dto.setBoard_writer(rs.getString("board_writer"));
				dto.setView_count(rs.getInt("view_count"));
				dto.setWrite_date(rs.getDate("write_date"));

				list.add(dto);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public BoardDTO get(int pk) {
		// 매개변수 pk(board_id) 와 일치하는 board_id 의 행만 보여줌
		// 즉 특정 게시글을 선택하면 그 글에 대한 정보를 보여주는 메서드
		String sql = "select * from myboard where board_id = ?";

		// detail.jsp 에
		BoardDTO detail = new BoardDTO();

		try (DBSession session = DBConnector.getSession(); 
				PreparedStatement pstmt = session.prepareStatement(sql);) {
			pstmt.setInt(1, pk);

			try (ResultSet rs = pstmt.executeQuery();) {

				// pk는 하나고 pk와 일치하는 board_id도 하나니까 rs.next() 값도 한개임
				rs.next();
				detail.setBoard_id(rs.getInt("board_id"));
				detail.setBoard_title(rs.getString("board_title"));
				detail.setBoard_content(rs.getString("board_content"));
				detail.setBoard_writer(rs.getString("board_writer"));
				detail.setView_count(rs.getInt("view_count"));
				detail.setBoard_password(rs.getString("board_password"));
				detail.setWrite_date(rs.getDate("write_date"));
			}
			return detail;

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}

	public int plusView(int pk) {

		String sql = "update myboard set view_count = view_count+1 where board_id = ?";

		try (DBSession session = DBConnector.getSession(); 
				PreparedStatement pstmt = session.prepareStatement(sql);) {
			pstmt.setInt(1, pk);
			return pstmt.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}

	}

	public int modify(BoardDTO dto) {
		String sql = "update myboard set board_title=?, board_content=? where board_id=?";

		try (DBSession session = DBConnector.getSession(); 
				PreparedStatement pstmt = session.prepareStatement(sql);) {
			pstmt.setString(1, dto.getBoard_title());
			pstmt.setString(2, dto.getBoard_content());
			pstmt.setInt(3, dto.getBoard_id());

			return pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
	}

	public int delete(int pk) {
		String sql = "delete from myboard where board_id = ?";

		try (DBSession session = DBConnector.getSession(); 
				PreparedStatement pstmt = session.prepareStatement(sql);) {

			pstmt.setInt(1, pk);
			return pstmt.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
	}

}
