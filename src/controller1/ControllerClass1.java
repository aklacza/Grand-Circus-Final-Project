package controller1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.hostModel;

@Controller
public class ControllerClass1 {

	@RequestMapping("/welcome")
	public ModelAndView helloWorld() {
		return new ModelAndView("welcome", "message", "Hello World");
	}

	@RequestMapping("/host")
	public ModelAndView hostView() {
		return new ModelAndView("host", "", "");
	}

	// @RequestMapping("/hostSubmit")
	@RequestMapping(value = "/hostSubmit", method = RequestMethod.GET)
	public ModelAndView hostViewSubmit(@ModelAttribute hostModel hmodel, Model model) {

		return new ModelAndView("success", "message", hmodel.toString());
	}

	@RequestMapping("/signup")
	public ModelAndView signupView() {
		return new ModelAndView("signup", "", "");
	}

	@RequestMapping("/login")
	public ModelAndView loginView() {
		return new ModelAndView("login", "", "");
	}

	@RequestMapping("/help")
	public ModelAndView helpView() {
		return new ModelAndView("help", "", "");
	}

	@RequestMapping("/listCaptains")
	public ModelAndView listCaptains() {

		try {

			Class.forName("com.mysql.jdbc.Driver");

			Connection c;
			String connectionString = "jdbc:mysql://52.32.231.4:3306/boatsharedb";
			c = DriverManager.getConnection(connectionString, "boatadmin", "aBBazaBBa!");
			Statement s = c.createStatement();
			ResultSet results = s.executeQuery("select * from boathosts");
			ArrayList<ArrayList<String>> hosts = new ArrayList<ArrayList<String>>();
			

			while (results.next()) {
				ArrayList<String> hostDetails = new ArrayList<String>();
				for(int x = 1; x < 8; x++){
					hostDetails.add(results.getString(x));
				}
				hosts.add(hostDetails);				
			}
			return new ModelAndView("listCaptains", "cList", hosts);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

			return new ModelAndView("error", "error", e.getMessage());
		}

	}
}
