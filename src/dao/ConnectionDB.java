package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/environment","root","admin");
//			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/environment","environment","Environment@123");
			if(conn != null){
				System.out.println("Connect Thanh Cong");
			}
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println("Xay ra loi"+e.getMessage());
		}
		return conn;
	}
}
