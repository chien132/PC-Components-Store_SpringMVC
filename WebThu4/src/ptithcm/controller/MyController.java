package ptithcm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class MyController {
	@RequestMapping("login")
	public String login() {

		return "login";
	}
	


	@RequestMapping("checkout")
	public String checkout() {

		return "checkout";
	}
	@RequestMapping("checkout2")
	public String checkout2() {

		return "checkout2";
	}

	@RequestMapping("details")
	public String details() {

		return "details";
	}

	@RequestMapping("cart")
	public String cart() {

		return "cart";
	}


	@RequestMapping("contact")
	public String contact() {

		return "contact";
	}




}
