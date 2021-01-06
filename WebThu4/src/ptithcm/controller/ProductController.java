package ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.entity.Product;

@Transactional
@Controller
public class ProductController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("productgrid")
	public String productgrid(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		model.addAttribute("products", list);
		return "productgrid";

	}
	
	@RequestMapping("productlist")
	public String productlist(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		model.addAttribute("products", list);
		return "productlist";

	}
	
	@RequestMapping("/index")
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		model.addAttribute("products", list);
		return "index";
	}

}
