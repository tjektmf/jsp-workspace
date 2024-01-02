package chap07;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import chap07.DTO.BreadDTO;

public class BreadDao {

	public List<BreadDTO> getAll() {
		String sql = "select * from bread";
		List<BreadDTO> list = new ArrayList<>();

		try (Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();) {
			while (rs.next()) {
				list.add(new BreadDTO(rs.getString("bread_name"), rs.getInt("bread_price")));

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	public Integer insert(BreadDTO breadDto) {
		// 나중에 컬럼이 추가될 상황에 대비해 컬럼명을 다 적어주는게 나중에 처리할 때 더 좋다
		String sql = "insert into bread(bread_name, bread_price) values(?,?)";
		try (Connection conn = DBConnector.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql);) {
			// ? 순서대로 값을 입력
			pstmt.setString(1, breadDto.getBread_name());
			pstmt.setInt(2, breadDto.getBread_price());

			return pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public int delete(BreadDTO breadDto) {
		String sql = "delete from bread where bread_name = ?";
		try (Connection conn = DBConnector.getConnection(); 
				PreparedStatement pstmt = conn.prepareStatement(sql);) {
			pstmt.setString(1, breadDto.getBread_name());
			System.out.println("제거함 + " + breadDto.getBread_name());
			pstmt.executeUpdate();
			return 1;

		} catch (SQLException e) {
			System.out.println("제거 실패");
			e.printStackTrace();
			return 0;
		}

	}

	public int update(BreadDTO breadDto) {
		String sql = "update bread set bread_price = ? where bread_name = ?";
		try (Connection conn = DBConnector.getConnection(); 
				PreparedStatement pstmt = conn.prepareStatement(sql);) {
			
			pstmt.setInt(1, breadDto.getBread_price());
			pstmt.setString(2, breadDto.getBread_name());
			System.out.println("변경함 + " + breadDto.getBread_name());
			pstmt.executeUpdate();
			return 1;

		} catch (SQLException e) {
			System.out.println("변경 실패");
			e.printStackTrace();
			return 0;
		}
	}

}
