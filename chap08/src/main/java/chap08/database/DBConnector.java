package chap08.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector {

	public static String driverPath = "oracle.jdbc.driver.OracleDriver";
	public static String url = "jdbc:oracle:thin:@localhost:1521:XE";
	public static String id = "secondwind";
	public static String pw = "1234";

	// static 으로 묶어야 어디서든 자유롭게 사용함
	static {
		try {
			Class.forName(driverPath);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(url, id, pw);
	}
}
