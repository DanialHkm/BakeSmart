package BAKECrud;
public class cust {
	
    private int CId;
    private String CName;
    private int CPhone;
    private String CAddress;
    private String CUsername;
    private String CPassword;
    
    public cust()
	{
		
	}
    
    public cust(int CId, String CName, int CPhone, String CAddress,String CUsername,String CPassword) 
	{
		this.CId = CId;
		this.CName = CName;
		this.CPhone = CPhone;
		this.CAddress = CAddress;
		this.CUsername = CUsername;
		this.CPassword = CPassword;
	}

	public int getCId() {
		return CId;
	}

	public void setCId(int cId) {
		CId = cId;
	}

	public String getCName() {
		return CName;
	}

	public void setCName(String cName) {
		CName = cName;
	}

	public int getCPhone() {
		return CPhone;
	}

	public void setCPhone(int cPhone) {
		CPhone = cPhone;
	}

	public String getCAddress() {
		return CAddress;
	}

	public void setCAddress(String cAddress) {
		CAddress = cAddress;
	}

	public String getCUsername() {
		return CUsername;
	}

	public void setCUsername(String cUsername) {
		CUsername = cUsername;
	}

	public String getCPassword() {
		return CPassword;
	}

	public void setCPassword(String cPassword) {
		CPassword = cPassword;
	}

}