package UserDAOPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.web.servlet.ModelAndView;


import model.hostModel;

import java.util.List;
import java.util.Scanner;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UserDAO {

	public void submitHostData() {
		// TODO Auto-generated method stub
		//get parameters
	}
	
	public hostModel getHostById(int id) {
		try {
			String st = "select * from boathosts where id=?";
			Connection c = getConnection();
			PreparedStatement s = c.prepareStatement(st);
			s.setInt(1, id);
			ResultSet results = s.executeQuery();
			return wrapResultSetToModel(results);
		} catch (Exception e) {
			return null;
		}
	}
		private Connection getConnection() {
			try {
				
//				Class.forName("com.mysql.jdbc.Driver");
//				Connection c;
//				String connectionString = "jdbc:mysql://endpoint";
//				c = DriverManager.getConnection(connectionString, "root", "password");
//				return c;
			
				Context ctx = new InitialContext();
	            DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/dbb");
	            Connection c = ds.getConnection();
	            return c;
		
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		
				return null;
			}
		}
		
		private hostModel wrapResultSetToModel(ResultSet result) throws SQLException {
			hostModel newModel = new hostModel();
			if (result.wasNull()) {
				return newModel;
			}
			while (result.next()) {
				newModel.setId(result.getInt("id"));
			}
			return newModel;
		}

	public void viewHostData() {
		
	}
	

}

