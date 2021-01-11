package ptithcm.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.websocket.server.PathParam;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ptithcm.entity.Bill;
import ptithcm.entity.BillItem;
import ptithcm.entity.Product;
import ptithcm.entity.User;

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

	@ModelAttribute("cart")
	public Bill getcart(HttpSession httpSession) {
		User user = (User) httpSession.getAttribute("user");
		if (user != null) {
			Session session = factory.getCurrentSession();
			User u = (User) session.get(User.class, user.getId());
			Collection<Bill> listBills = u.getBills();
			for (Bill i : listBills) {
				if (!i.isPaid()) {
					return i;
				}
			}
		}
		return null;
	}

	@ModelAttribute("cartitem")
	public Collection<BillItem> getcartitem(HttpSession httpSession) {
		User user = (User) httpSession.getAttribute("user");
		if (user != null) {
			Session session = factory.getCurrentSession();
			User u = (User) session.get(User.class, user.getId());
			Collection<Bill> listBills = u.getBills();
			for (Bill i : listBills) {
				if (!i.isPaid()) {
					return i.getBillItems();
				}
			}
		}
		return null;
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
	public String index(ModelMap model, HttpSession httpSession) {
//		String hql = "FROM Product";
//		List<Object> list = getList(hql);
//		model.addAttribute("products", list);
//		return "index";
		return "redirect:/index.htm?page=1";
	}

	@RequestMapping(value = "index", params = "page")
	public String indexpage(ModelMap model, @RequestParam("page") Integer page) {
		List<Object> list = getList("From Product");
		model.addAttribute("products", list.subList((page - 1) * 8, (page * 8 > list.size() ? list.size() : page * 8)));
		model.addAttribute("page", page);
		model.addAttribute("maxpage", Math.ceil(list.size() / 8.0));
		model.addAttribute("where", 1);
		return "index";
	}

	@RequestMapping(value = "index", params = "search", method = RequestMethod.GET)
	public String searchproduct(@PathParam("search") String search, ModelMap model) {
		String hql = "From Product p where p.name like '%" + search + "%'";
		List<Object> list = getList(hql);
		model.addAttribute("products", list);
		return "index";
	}

	@RequestMapping(value = "brand/{id}", method = RequestMethod.GET)
	public String indexbrand(ModelMap model, @PathVariable("id") String id) {
		String hql = String.format("FROM Product p where p.brand.id=%s", id);
		List<Object> list = getList(hql);
		model.addAttribute("products", list);
		return "index";
	}
	@RequestMapping(value = "category/{id}", method = RequestMethod.GET)
	public String indexcate(ModelMap model, @PathVariable("id") String id) {
		String hql = String.format("FROM Product p where p.category.id=%s", id);
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

	@RequestMapping(value = "addtocart/{id}/{qty}/{ret}", method = RequestMethod.POST)
	public String addtocart(ModelMap model, @PathVariable("qty") int qty, @PathVariable("ret") String ret,
			@PathVariable("id") int id, HttpSession httpSession) {
		if (ret.equals("details"))
			ret += "/" + id;
		User httpuser = (User) httpSession.getAttribute("user");
		if (httpuser == null)
			return "redirect:/login.htm";

		Bill bill = null;
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		User user = (User) session.get(User.class, httpuser.getId());
		Collection<Bill> listBills = user.getBills();
		for (Bill i : listBills) {
			if (!i.isPaid()) {
				bill = i;
				break;
			}
		}
		if (bill == null) {
			bill = new Bill();
			bill.setUser(user);
			bill.setPaid(false);
			bill.setStatus(false);
			try {
				session.save(bill);
			} catch (Exception e) {
				t.rollback();
				return "redirect:/" + ret + ".htm";
			}
		}
		Product p = (Product) session.get(Product.class, id);
		BillItem bi = new BillItem();
		bi.setBill(bill);
		bi.setAmount(0);
		bi.setProduct(p);
		boolean exist = false;

		if (bill.getBillItems() != null) {
			Collection<BillItem> listitem = bill.getBillItems();
			for (BillItem i : listitem) {
				if (bi.getProduct().getId() == i.getProduct().getId()) {
					bi = i;
					exist = true;
				}
			}
		}

		if (bi.getAmount() + qty > p.getQuantity()) {
			bi.setAmount(bi.getProduct().getQuantity());
			t.commit();
		} else {
			bi.setAmount(bi.getAmount() + qty);
			try {
				if (exist) {
					session.update(bi);
				} else {
					session.save(bi);
				}
				t.commit();
			} catch (Exception e) {
				System.out.println(e);
				t.rollback();
			} finally {
				session.close();
			}
		}
		return "redirect:/" + ret + ".htm";
	}

	@RequestMapping(value = "removeitem/{item}/{ret}")
	public String deleteitem(@PathVariable("item") int iid, @PathVariable("ret") String ret) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(session.get(BillItem.class, iid));
			t.commit();
		} catch (Exception e) {
			System.out.println(e);
			t.rollback();
		} finally {
			session.close();
		}
		return "redirect:/" + ret + ".htm";
	}

	@RequestMapping(value = "edititem/{item}/{number}")
	public String edititem(@PathVariable("item") int iid, @PathVariable("number") int number) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		BillItem bi = (BillItem) session.get(BillItem.class, iid);
		if (bi.getAmount() > bi.getProduct().getQuantity()) {
			bi.setAmount(bi.getProduct().getQuantity());
		}
		if ((bi.getAmount() + number) >= 0 && (bi.getAmount() + number) <= bi.getProduct().getQuantity()) {
			bi.setAmount(bi.getAmount() + number);
		}
		try {
			if (bi.getAmount() == 0) {
				session.delete(bi);
			} else {
				session.update(bi);
			}
			t.commit();
		} catch (Exception e) {
			System.out.println(e);
			t.rollback();
		} finally {
			session.close();
		}
		return "redirect:/cart.htm";
	}

	@RequestMapping("cart")
	public String cart(HttpSession httpSession) {
		User u = (User) httpSession.getAttribute("user");
		if (u == null) {
			return "redirect:/login.htm";
		}
		return "cart";
	}

	@RequestMapping(value = "adddetail/{id}", params = "qty", method = RequestMethod.POST)
	public String addtocart(ModelMap model, @PathParam("qty") int qty, @PathVariable("id") int id,
			HttpSession httpSession) {
		String ret = "details/" + id;
		User httpuser = (User) httpSession.getAttribute("user");
		if (httpuser == null)
			return "redirect:/login.htm";

		Bill bill = null;
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		User user = (User) session.get(User.class, httpuser.getId());
		Collection<Bill> listBills = user.getBills();
		for (Bill i : listBills) {
			if (!i.isPaid()) {
				bill = i;
				break;
			}
		}
		if (bill == null) {
			bill = new Bill();
			bill.setUser(user);
			bill.setPaid(false);
			bill.setStatus(false);
			try {
				session.save(bill);
			} catch (Exception e) {
				t.rollback();
				return "redirect:/" + ret + ".htm";
			}
		}
		Product p = (Product) session.get(Product.class, id);
		BillItem bi = new BillItem();
		bi.setBill(bill);
		bi.setAmount(0);
		bi.setProduct(p);
		boolean exist = false;

		if (bill.getBillItems() != null) {
			Collection<BillItem> listitem = bill.getBillItems();
			for (BillItem i : listitem) {
				if (bi.getProduct().getId() == i.getProduct().getId()) {
					bi = i;
					exist = true;
				}
			}
		}

		if (bi.getAmount() + qty > p.getQuantity()) {
			bi.setAmount(bi.getProduct().getQuantity());
			t.commit();
		} else {
			bi.setAmount(bi.getAmount() + qty);
			try {
				if (exist) {
					session.update(bi);
				} else {
					session.save(bi);
				}
				t.commit();
			} catch (Exception e) {
				System.out.println(e);
				t.rollback();
			} finally {
				session.close();
			}
		}
		return "redirect:/" + ret + ".htm";
	}

	@RequestMapping("checkout/{id}")
	public String checkout(ModelMap model, @PathVariable("id") int id,RedirectAttributes re) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		Bill bill = (Bill) session.get(Bill.class, id);
		if(bill.getBillItems().size()==0){
			re.addFlashAttribute("message","Your cart is empty !");
			return "redirect:/cart.htm";
		}
		for (BillItem i : bill.getBillItems()) {
			i.getProduct().setQuantity(i.getProduct().getQuantity() - i.getAmount());
		}
		bill.setPaid(true);
		bill.setBuydate(new java.util.Date());
		try {
			session.update(bill);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		model.addAttribute("bill", bill);
		return "billdetails";
	}
}
