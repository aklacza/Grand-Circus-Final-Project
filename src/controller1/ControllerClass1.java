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

}
