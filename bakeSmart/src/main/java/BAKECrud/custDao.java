package BAKECrud;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  

public class custDao {  
  
public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bakesmart","root","");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
public static int save(cust c){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into customer(CName,CPhone,CAddress,CUsername,CPassword) values(?,?,?,?,?)");  
        ps.setString(1,c.getCName());  
        ps.setInt(2,c.getCPhone());  
        ps.setString(3,c.getCAddress());  
        ps.setString(4,c.getCUsername());  
        ps.setString(5,c.getCPassword());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int update(cust c){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update customer set CName=?,CPhone=?,CAddress=?,CUsername=?,CPassword=? where CId=?");  
        ps.setString(1,c.getCName());  
        ps.setInt(2,c.getCPhone());  
        ps.setString(3,c.getCAddress());  
        ps.setString(4,c.getCUsername());  
        ps.setString(5,c.getCPassword());  
        ps.setInt(6,c.getCId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(cust c){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from customer where CId=?");  
        ps.setInt(1,c.getCId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<cust> getAllRecords(){  
    List<cust> list=new ArrayList<cust>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from customer");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            cust c=new cust();  
            c.setCId(rs.getInt("CId"));  
            c.setCName(rs.getString("CName"));  
            c.setCPhone(rs.getInt("CPhone"));  
            c.setCAddress(rs.getString("CAddress"));  
            c.setCUsername(rs.getString("CUsername"));  
            c.setCPassword(rs.getString("CPassword"));  
            list.add(c);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static cust getRecordById(int CId){  
    cust c=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from customer where CId=?");  
        ps.setInt(1,CId);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            c=new cust();  
            c.setCId(rs.getInt("CId"));  
            c.setCName(rs.getString("CName"));  
            c.setCPhone(rs.getInt("CPhone"));  
            c.setCAddress(rs.getString("CAddress"));  
            c.setCUsername(rs.getString("CUsername"));  
            c.setCPassword(rs.getString("CPassword"));  
        }  
    }catch(Exception e){System.out.println(e);}  
    return c;  
}  
} 