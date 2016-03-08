package controller1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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

}
