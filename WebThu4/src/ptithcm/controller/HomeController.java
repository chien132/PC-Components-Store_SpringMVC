package ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;
import javax.websocket.server.PathParam;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Product;

@Transactional
@Controller
public class HomeController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("")
	public String welcome() {
		return "redirect:/index.htm";
	}

	List<Object> getList(String hql) {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<Object> list = query.list();
		return list;
	}

	@ModelAttribute("categories")
	public List<Object> getstaffs() {
		String hql = "from Category";
		List<Object> list = getList(hql);
		return list;
	}

	@ModelAttribute("products")
	public List<Object> getproducts() {
		String hql = "from Product";
		List<Object> list = getList(hql);
		return list;
	}

	@ModelAttribute("brands")
	public List<Object> getsbrands() {
		String hql = "from Brand";
		List<Object> list = getList(hql);
		return list;
	}

	@RequestMapping("productlist")
	public String productgrid(ModelMap model) {
		String hql = "FROM Product";
		List<Object> list = getList(hql);
		model.addAttribute("products", list);
		model.addAttribute("type", "list");
		return "product";

	}

	@RequestMapping("productgrid")
	public String productlist(ModelMap model) {
		String hql = "FROM Product";
		List<Object> list = getList(hql);
		model.addAttribute("products", list);
		model.addAttribute("type", "grid");
		return "product";

	}

	@RequestMapping("index")
	public String index(ModelMap model) {
		String hql = "FROM Product";
		List<Object> list = getList(hql);
		model.addAttribute("products", list);
		return "index";
	}

//	@RequestMapping(value = "index", params = "search", method = RequestMethod.GET)
//	public String searchproduct(@PathParam("search") String search, ModelMap model) {
//		String hql = "From Product p where p.name like '%" + search + "%'";
//		List<Object> list = getList(hql);
//		model.addAttribute("products", list);
//		return "index";
//	}

	@RequestMapping(value = "brand/{idcate}", method = RequestMethod.GET)
	public String indexcate(ModelMap model, @PathVariable("idcate") String idcate) {
		String hql = String.format("select p FROM Product p,Category c where c.id=p.category.id and c.id='%s'", idcate);
		List<Object> list = getList(hql);
		model.addAttribute("products", list);
		return "index";
	}

	@RequestMapping(value = "details/{pid}", method = RequestMethod.GET)
	public String details(ModelMap model, @PathVariable("pid") int pid) {
		Session session = factory.getCurrentSession();
		/*
		 * String hql = String.format("FROM Product p where p.id='%s'", pid);
		 * List<Object> list=getList(hql);
		 */
		model.addAttribute("p", session.get(Product.class, pid));
		return "details";
	}

	@RequestMapping("checkout")
	public String checkout() {

		return "checkout";
	}

	@RequestMapping("checkout2")
	public String checkout2() {

		return "checkout2";
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
