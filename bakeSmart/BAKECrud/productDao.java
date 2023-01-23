package BAKECrud;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  

public class productDao {  
  
public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bakesmart","root","");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
public static int save(product p){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into product(name,quantity,description) values(?,?,?)");  
        ps.setString(1,p.getName());  
        ps.setInt(2,p.getQuantity());  
        ps.setString(3,p.getDescription());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int update(product p){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update product set name=?,quantity=?,description=? where id=?");  
        ps.setString(1,p.getName());  
        ps.setInt(2,p.getQuantity());  
        ps.setString(3,p.getDescription()); 
        ps.setInt(4,p.getId()); 
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(product p){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from product where id=?");  
        ps.setInt(1,p.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<product> getAllRecords(){  
    List<product> list=new ArrayList<product>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from product");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
        	product p=new product();  
            p.setId(rs.getInt("id"));  
            p.setName(rs.getString("name"));  
            p.setQuantity(rs.getInt("quantity"));  
            p.setDescription(rs.getString("description"));   
            list.add(p);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static product getRecordById(int id){  
    product p=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from product where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            p=new product();  
            p.setId(rs.getInt("id"));  
            p.setName(rs.getString("name"));  
            p.setQuantity(rs.getInt("quantity"));  
            p.setDescription(rs.getString("description"));
        }  
    }catch(Exception e){System.out.println(e);}  
    return p;  
}  
}  