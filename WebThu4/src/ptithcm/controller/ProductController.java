package ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Product;

@Transactional
@Controller
public class ProductController {
	@Autowired
	SessionFactory factory;

	List<Object> getList(String hql) {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<Object> list = query.list();
		return list;
	}

	@RequestMapping("productgrid")
	public String productgrid(ModelMap model) {
		String hql = "FROM Product";
		List<Object> list = getList(hql);
		model.addAttribute("products", list);
		return "productgrid";

	}

	@RequestMapping("productlist")
	public String productlist(ModelMap model) {
		String hql = "FROM Product";
		List<Object> list = getList(hql);
		model.addAttribute("products", list);
		return "productlist";

	}

	@RequestMapping("/index")
	public String index(ModelMap model) {
		String hql = "FROM Product";
		List<Object> list = getList(hql);
		model.addAttribute("products", list);
		return "index";
	}

	@RequestMapping(value = "index/{cate}",method = RequestMethod.GET)
	public String indexcate(ModelMap model, @PathVariable("cate") String cate) {
		String hql = String.format("select p FROM Product p,Category c where c.id=p.category.id and c.name='%s'", cate);
		List<Object> list = getList(hql);
		model.addAttribute("products", list);
		return "index";
	}

}
