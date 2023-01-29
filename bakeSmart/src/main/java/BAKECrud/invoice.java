package BAKECrud;

public class invoice {
	
	private int invoiceId;
    private int OrderId;
    private String method;
    private int amount;
    
	public invoice() {
		// TODO Auto-generated constructor stub
	}

	public invoice(int invoiceId, int orderId, String method, int amount) {
		super();
		this.invoiceId = invoiceId;
		this.OrderId = orderId;
		this.method = method;
		this.amount = amount;
	}

	public int getInvoiceId() {
		return invoiceId;
	}

	public void setInvoiceId(int invoiceId) {
		this.invoiceId = invoiceId;
	}

	public int getOrderId() {
		return OrderId;
	}

	public void setOrderId(int orderId) {
		OrderId = orderId;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

}
