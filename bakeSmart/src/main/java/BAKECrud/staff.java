package BAKECrud;
public class staff {
	
    private int SId;
    private String SUsername;
    private String SPassword;
    private String SPosition;
    
    public staff()
	{
		
	}
    
    public staff(int SId, String SUsername, String SPassword, String SPosition) 
	{
		this.SId = SId;
		this.SUsername = SUsername;
		this.SPassword = SPassword;
		this.SPosition = SPosition;
	}

	public int getSId() {
		return SId;
	}

	public void setSId(int sId) {
		SId = sId;
	}

	public String getSUsername() {
		return SUsername;
	}

	public void setSUsername(String sUsername) {
		SUsername = sUsername;
	}

	public String getSPassword() {
		return SPassword;
	}

	public void setSPassword(String sPassword) {
		SPassword = sPassword;
	}

	public String getSPosition() {
		return SPosition;
	}

	public void setSPosition(String sPosition) {
		SPosition = sPosition;
	}
}