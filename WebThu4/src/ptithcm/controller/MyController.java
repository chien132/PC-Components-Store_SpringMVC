package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.User;

@Transactional
@Controller
public class MyController {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		model.addAttribute("user", new User());
		return "login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(ModelMap model, @ModelAttribute("user") User user, HttpSession httpSession) {
		Session session = factory.getCurrentSession();
		String hql = "FROM User WHERE username = '" + user.getUsername().trim() + "' and password ='"
				+ user.getPassword().trim() + "'";
		System.out.println(hql);
		Query query = session.createQuery(hql);
		List<User> list = query.list();
		if (!list.isEmpty()) {
			httpSession.setAttribute("user", user);
			model.addAttribute("message", "Đăng nhập thành công !");
			if (user.isAdmin()) {
				return "admin/index";
			}
			return "index";
		}

		model.addAttribute("message", "Đăng nhập thất bại!");
		return "login";
	}

	@RequestMapping("logoff")
	public String logoff(ModelMap model, HttpSession session) {
		model.addAttribute("message", "Logoff");
		session.removeAttribute("user");
		;
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
