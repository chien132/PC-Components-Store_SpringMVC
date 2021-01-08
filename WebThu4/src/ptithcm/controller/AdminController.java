package ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.entity.Product;

@Transactional
@Controller
@RequestMapping("/admin/")
public class AdminController {
	@Autowired
	SessionFactory factory;

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

	@RequestMapping("index")
	public String index(ModelMap model) {
		String hql = "FROM Product";
		List<Object> list = getList(hql);
		model.addAttribute("products", list);
		return "admin/index";
	}

	@RequestMapping("table")
	public String table(ModelMap model) {
		String hql = "FROM Product";
		List<Object> list = getList(hql);
		model.addAttribute("products", list);
		return "admin/table";
	}

	@RequestMapping(value = "update/{pid}", method = RequestMethod.GET)
	public String update(ModelMap model, @PathVariable("pid") int id) {
		// String hql = String.format("FROM Product p where p.id='%s'", id);
		// List<Object> plist = getList(hql);
		// model.addAttribute("p", plist.get(0));

		Session session = factory.getCurrentSession();
		Product p = (Product) session.get(Product.class, id);
		model.addAttribute("p", p);
		return "admin/update";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(ModelMap model, @ModelAttribute("p") Product p) {
		p.setImage("bla bla bla");
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(p);
			t.commit();
			model.addAttribute("message", "Update thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Update thất bại !" + e);
			return "admin/update";
		} finally {
			session.close();
		}
		System.out.println(p.getName());
		return "admin/update";
	}

	@RequestMapping(value = "delete/{pid}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable("pid") String id) {
		String hql = String.format("select p FROM Product p where p.id='%s'", id);
		List<Object> list = getList(hql);
		model.addAttribute("p", list.get(0));
		return "admin/delete";
	}
}
