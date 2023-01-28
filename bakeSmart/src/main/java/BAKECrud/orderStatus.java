package BAKECrud;

import java.util.Date;

public class orderStatus {
	
	private int OrderId;
    private int custId;
    private int id;
    private String description;
    private int StaffId;
    private int orderQuantity;
    private Date date;
    private String status;
    
	public orderStatus() {
		// TODO Auto-generated constructor stub
	}

	public orderStatus(int orderId, int custId, int id, String description, int staffId, int orderQuantity, Date date,
			String status) 
	{
		this.OrderId = orderId;
		this.custId = custId;
		this.id = id;
		this.description = description;
		this.StaffId = staffId;
		this.orderQuantity = orderQuantity;
		this.date = date;
		this.status = status;
	}

	public int getOrderId() {
		return OrderId;
	}

	public void setOrderId(int orderId) {
		OrderId = orderId;
	}

	public int getCustId() {
		return custId;
	}

	public void setCustId(int custId) {
		this.custId = custId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getStaffId() {
		return StaffId;
	}

	public void setStaffId(int staffId) {
		StaffId = staffId;
	}

	public int getOrderQuantity() {
		return orderQuantity;
	}

	public void setOrderQuantity(int orderQuantity) {
		this.orderQuantity = orderQuantity;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
