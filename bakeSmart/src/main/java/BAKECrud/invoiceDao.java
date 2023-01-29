package BAKECrud;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  

public class invoiceDao {

	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bakesmart","root","");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}
	public static invoice getRecordById(int invoiceId){  
	    invoice i=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from invoice where invoiceId=?");  
	        ps.setInt(1,invoiceId);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            i=new invoice();  
	            i.setInvoiceId(rs.getInt("invoiceId"));  
	            i.setOrderId(rs.getInt("orderId"));  
	            i.setMethod(rs.getString("method"));  
	            i.setAmount(rs.getInt("amount"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return i;  
	}
	public static List<invoice> getAllRecords(){  
	    List<invoice> list=new ArrayList<invoice>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from invoice");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	invoice i = new invoice();
	        	i.setInvoiceId(rs.getInt("invoiceId")); 
	            i.setOrderId(rs.getInt("orderId"));  
	            i.setMethod(rs.getString("method"));  
	            i.setAmount(rs.getInt("amount"));  
	            list.add(i);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}
	public invoiceDao() {
		// TODO Auto-generated constructor stub
	}

}
