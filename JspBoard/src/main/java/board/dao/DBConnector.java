package board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Set;

public class DBConnector {

	public static Set<DBSession> sessions = new HashSet<>();

	public static String driverPath = "oracle.jdbc.driver.OracleDriver";
	public static String url = "jdbc:oracle:thin:@localhost:1521:XE";
	public static String id = "hr";
	public static String pw = "1234";

	static {
		try {
			Class.forName(driverPath);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		// DBSession 에는 forName(driverPath)가 없음
		for (int i = 0; i < 10; i++) {
			sessions.add(new DBSession());
		}
	}

	public static DBSession getSession() throws SQLException {
		while (true) {
			for (DBSession session : sessions) {
				if (!session.using) {
					// 해당 DB세션을 사용중으로 변경
					session.using = true;
					return session;
				}
			}
		}
	}
}
