package controller1;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import UserDAOPackage.UserDAO;
import model.hostModel;

@Controller
public class UserLogin {
	@RequestMapping("/processLogin")
	public ModelAndView loginUser(@RequestParam("userType") String userType, @RequestParam("email") String email, @RequestParam("password") String password,
			HttpServletResponse response) throws SQLException, NamingException {
		
			Context ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/dbb");
			Connection c = ds.getConnection();
			
			Statement st = c.createStatement();
			ResultSet results = st.executeQuery(
					"select id from boatsharedb." + userType + " where email='" + email + "' and password='" + password + "'");
		
			if (results.next()) {
				String idStorage = results.getString(1);
				Cookie cookie = new Cookie("id", idStorage);
				response.addCookie(cookie);
				
				UserDAO dao = new UserDAO();
				ArrayList<hostModel> hosts = dao.viewHostData();
				return new ModelAndView("listCaptains", "results", hosts);	
			} else
			{
				return new ModelAndView("login", "results", "Try Again");
			}
	}
	
}
