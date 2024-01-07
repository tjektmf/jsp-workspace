package homework.item;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import homework.DTO.FreeDTO;
import homework.database.DBConnector;

public class FreeDAO {

	public List<FreeDTO> getList() {
		String sql = "select * from free order by free_number desc";
		List<FreeDTO> list = new ArrayList<FreeDTO>();
		try (Connection conn = DBConnector.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql);) {
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new FreeDTO(rs.getInt("free_number"), rs.getString("free_id"), rs.getInt("free_pw"),
						rs.getString("free_body"), rs.getInt("free_like")));
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<FreeDTO> getWriting(String id, int pw, String body) {

		String sql = "insert into free(free_number, free_id, free_pw, free_body, free_like)"
				+ " values (free_number_seq.nextval, ?, ?, ?, 0)";
		try (Connection conn = DBConnector.getConnection(); 
				PreparedStatement pstmt = conn.prepareStatement(sql);)
		{
			pstmt.setString(1, id);
			pstmt.setInt(2, pw);
			pstmt.setString(3, body);
			pstmt.executeQuery();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}
}
