package UserDAOPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Scanner;

public class UserDAO {

	public void submitHostData() {
		// TODO Auto-generated method stub
		//get parameters
	}
	

//	try {
//		
//		Class.forName("com.mysql.jdbc.Driver");
//		
//		Connection c;
//		String connectionString = "jdbc:mysql://52.32.231.4:3306/boatsharedb";
//		c = DriverManager.getConnection(connectionString, "boatadmin", "aBBazaBBa!");
//		Statement s = c.createStatement();
//		ResultSet results = s.executeQuery("select * from test");
//		ArrayList<String> customerID = new ArrayList<String>();
//
//		while (results.next()) {
//			customerID.add(results.getString(1));
//		}
//		return new ModelAndView("listCaptains", "cList", customerID);
//
//	} catch (Exception e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//
//		return new ModelAndView("error", "error", e.getMessage());
//	}
}

