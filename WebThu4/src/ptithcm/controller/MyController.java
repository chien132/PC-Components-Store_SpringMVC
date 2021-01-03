package ptithcm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class MyController {
	@RequestMapping("/index")
	public String index() {

		return "index";
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

	@RequestMapping("productgrid")
	public String productgrid() {

		return "productgrid";
	}

	@RequestMapping("productlist")
	public String productlist() {

		return "productlist";
	}

}
