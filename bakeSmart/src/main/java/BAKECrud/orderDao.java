package BAKECrud;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  

public class orderDao {

	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bakesmart","root","");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}
	
	
	public static List<orderStatus> getAllRecords(){  
	    List<orderStatus> list=new ArrayList<orderStatus>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from ordering");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	orderStatus o = new orderStatus();  
	            o.setOrderId(rs.getInt("orderId"));  
	            o.setStaffId(rs.getInt("staffId"));  
	            o.setId(rs.getInt("id"));  
	            o.setStatus(rs.getString("status"));   
	            list.add(o);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public orderDao() {
		// TODO Auto-generated constructor stub
	}

}
