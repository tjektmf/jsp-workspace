package homework.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector {

	public static String driverPath = "oracle.jdbc.driver.OracleDriver";
	public static String url = "jdbc:oracle:thin:@14.56.25.122:1521:XE";
	public static String id = "secondwind";
	public static String pw = "1234";

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
