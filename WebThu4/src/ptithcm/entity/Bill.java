package ptithcm.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Bill")
public class Bill {
	@Id
	private int id;
	private boolean status;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date buydate;

	@ManyToOne
	@JoinColumn(name = "userid")
	private User user;

	@OneToMany(mappedBy = "bill", fetch = FetchType.EAGER)
	private Collection<BillItem> billItems;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Date getDate() {
		return buydate;
	}

	public void setDate(Date date) {
		this.buydate = date;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Collection<BillItem> getBillItems() {
		return billItems;
	}

	public void setBillItems(Collection<BillItem> billItems) {
		this.billItems = billItems;
	}
	
	
}
