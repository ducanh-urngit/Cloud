package vn.banhang.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import vn.banhang.connection.DBConnect;

public class DBConnect {


	public Connection getConnection() throws Exception {
	
		Connection c = null;

		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());

			String jdbcUrl = "jdbc:mysql://34.126.76.196/BanTraiCayWeb";
			String username = "root";
			String password = "";

			c = DriverManager.getConnection(jdbcUrl, username, password);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return c;	}

	
}
