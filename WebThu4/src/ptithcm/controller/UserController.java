package ptithcm.controller;

import java.io.File;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletContext;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import ptithcm.entity.User;

@Transactional
@Controller
public class UserController {
	@Autowired
	SessionFactory factory;

	@Autowired
	ServletContext context;

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		model.addAttribute("user", new User());
		return "login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(ModelMap model, @ModelAttribute("user") User user, HttpSession httpSession) {
		Session session = factory.getCurrentSession();
		String hql = String.format("from User where username='%s' and password='%s'", user.getUsername().trim(),
				user.getPassword().trim());
		System.out.println(hql);
		Query query = session.createQuery(hql);
		List<User> list = query.list();
		if (!list.isEmpty()) {
			httpSession.setAttribute("user", user);
			if (list.get(0).isAdmin()) {
				return "redirect:/admin/index.htm";
			}
			return "index";
		} else {

			model.addAttribute("message", "Đăng nhập thất bại!");
			return "login";
		}
	}

	@RequestMapping("logout")
	public String logout(ModelMap model, HttpSession session) {
		model.addAttribute("message", "Logoff");
		session.removeAttribute("user");
		;
		return "login";
	}

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register(ModelMap model) {
		return "register";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(ModelMap model, @RequestParam("username") String username,
			@RequestParam("password") String password, @RequestParam("cpassword") String cpassword,
			@RequestParam("email") String email) {
		model.addAttribute("username", username);
		model.addAttribute("password", password);
		model.addAttribute("cpassword", cpassword);
		model.addAttribute("email", email);
		if (username.isEmpty()) {
			model.addAttribute("message", "Vui lòng nhập Username");
		} else if (password.isEmpty() || cpassword.isEmpty()) {
			model.addAttribute("message", "Vui lòng nhập đầy đủ mật khẩu");
		} else if (password.compareTo(cpassword) != 0) {
			model.addAttribute("message", "Mật khẩu không trùng khớp");
		} else if (!email.isEmpty()) {
			Pattern VALID_EMAIL_ADDRESS_REGEX = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$",
					Pattern.CASE_INSENSITIVE);
			Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(email);
			if (!matcher.find()) {
				model.addAttribute("message", "Email không hợp lệ");
			}
		} else {
			Session session = factory.getCurrentSession();
			String hql = String.format("from User where username='%s'", username);
			Query query = session.createQuery(hql);
			List<User> list = query.list();
			if (list.isEmpty()) {
				model.addAttribute("message", "Available");
			} else {
				model.addAttribute("message", "Not Available");
			}

//			try {
//				String photoPath = context.getRealPath("/files/" + photo.getOriginalFilename());
//				photo.transferTo(new File(photoPath));
//
//				model.addAttribute("photo_name", photo.getOriginalFilename());
//				model.addAttribute("cv_name", cv.getOriginalFilename());
//				model.addAttribute("cv_type", cv.getContentType());
//				model.addAttribute("cv_size", cv.getSize());
//				return "job/apply";
//
//			} catch (Exception e) {
//				// TODO: handle exception
//				model.addAttribute("message", "Lỗi lưu file !\n" + e);
//			}
		}
		return register(model);
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
