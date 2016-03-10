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
	
	//@RequestMapping("/hostSubmit")
	@RequestMapping(value = "/hostSubmit", method = RequestMethod.GET) 
	public ModelAndView hostViewSubmit(@ModelAttribute hostModel hmodel, Model model) {
		UserDAO dao = new UserDAO();
//		dao.insertUserMethod
		
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

			return new ModelAndView("error", "error", "error");

		}
	}

