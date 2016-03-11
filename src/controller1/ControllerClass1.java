package controller1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import UserDAOPackage.UserDAO;
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
	@RequestMapping(value = "/hostSubmit", method = RequestMethod.POST)
	public ModelAndView hostViewSubmit(@ModelAttribute hostModel hmodel, Model model) {
		System.out.println("hostViewSubmit" + hmodel.getFname());
		UserDAO dao = new UserDAO();
		// dao.insertUserMethod
		dao.submitHostData(hmodel);

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
		UserDAO dao = new UserDAO();
		ResultSet results = dao.viewHostData();
		
		ArrayList<hostModel> hostList = new ArrayList<hostModel>();
		
		try {
			while (results.next()) {
				
				hostModel temp = new hostModel();
				temp.setId(results.getInt(1));
				temp.setFname(results.getString(2));
				temp.setLname(results.getString(3));
				temp.setEmail(results.getString(4));
				temp.setAddress(results.getString(5));
				temp.setCity(results.getString(6));
				temp.setState(results.getString(7));
				temp.setZip(results.getString(8));
				temp.setCapacity(results.getInt(9));
				temp.setType(results.getString(10));
				temp.setProfile(results.getString(11));
				temp.setInterests(results.getString(12));
				hostList.add(temp);
//			    for (int i = 1; i <= columns; i++) {
//			        message.append(results.getString(i) + " ");
//			        
//			        hostList.add(results.getString(i));
//			    }
//			    message.append("\n");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return new ModelAndView("listCaptains", "results", hostList);
	}

	@RequestMapping("/learnMore")
	public ModelAndView learnMore() {
		return new ModelAndView("learnMore", "", "");
	}
}
