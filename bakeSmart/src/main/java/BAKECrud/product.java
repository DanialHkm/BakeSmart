package BAKECrud;

public class product {
	
    private int id;
    private String name;
    private int quantity;
    private String description;
    
    public product()
	{
		
	}
    
    public product(int id, String name, int quantity, String description) 
	{
		this.id = id;
		this.name = name;
		this.quantity = quantity;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	
    
	
}