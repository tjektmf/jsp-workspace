package chap08.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import chap08.item.DataModel;

public class DataList {

	public List<DataModel> getFirstName(String firstName) {

		String sql = "select * from employees inner join departments using (department_id) where first_name = ?";
		List<DataModel> list = new ArrayList<DataModel>();
		try (Connection conn = DBConnector.getConnection(); 
				PreparedStatement pstmt = conn.prepareStatement(sql);) 
		{
			pstmt.setString(1, firstName);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new DataModel(rs.getString("employee_id"), rs.getString("first_name"),
						rs.getString("last_name"), rs.getString("department_id"), rs.getString("department_name"),
						rs.getInt("salary")));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	public List<DataModel> getLastName(String lastName) {

		String sql = "select * from employees inner join departments using (department_id) where last_name = ?";
		List<DataModel> list = new ArrayList<DataModel>();
		try (Connection conn = DBConnector.getConnection(); 
				PreparedStatement pstmt = conn.prepareStatement(sql);) 
		{
			pstmt.setString(1, lastName);
			ResultSet rs = pstmt.executeQuery();
			System.out.println("rs.next 돌아가기전");
			while (rs.next()) {
				list.add(new DataModel(rs.getString("employee_id"), rs.getString("first_name"),
						rs.getString("last_name"), rs.getString("department_id"), rs.getString("department_name"),
						rs.getInt("salary")));
				System.out.println("rs.next 돌아가는중");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return list;
	}
	
	
	public List<DataModel> getDepName(String depName) {

		String sql = "select * from employees inner join departments using (department_id) where department_name = ?";
		List<DataModel> list = new ArrayList<DataModel>();
		try (Connection conn = DBConnector.getConnection(); 
				PreparedStatement pstmt = conn.prepareStatement(sql);) 
		{
			pstmt.setString(1, depName);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(new DataModel(rs.getString("employee_id"), rs.getString("first_name"),
						rs.getString("last_name"), rs.getString("department_id"), rs.getString("department_name"),
						rs.getInt("salary")));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	
}
