package BAKECrud;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  

public class registerDao {
	  
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bakesmart","root","");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(registermodel r){  
	    int status=0;   
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into customer(CId,CName,CPhone,CAddress,CUsername,CPassword) values(?,?,?,?,?,?)"); 
	        ps.setInt(1,r.getCId()); 
	        ps.setString(2,r.getCName());  
	        ps.setInt(3,r.getCPhone());  
	        ps.setString(4,r.getCAddress());  
	        ps.setString(5,r.getCUsername());
	        ps.setString(6,r.getCPassword());
	     
	        
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  }