package controller1;

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
		ArrayList<hostModel> hosts = dao.viewHostData();
		return new ModelAndView("listCaptains", "results", hosts);
	}

	@RequestMapping("/learnMore")
	public ModelAndView learnMore() {
		return new ModelAndView("learnMore", "", "");
	}
}
