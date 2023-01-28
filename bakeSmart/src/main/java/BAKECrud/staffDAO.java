package BAKECrud;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  

public class staffDAO {  
  
public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bakesmart","root","");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
} 
public static List<staff> getAllStaff(){  
    List<staff> list=new ArrayList<staff>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from staff");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
        	staff s=new staff();  
            s.setSId(rs.getInt("SId"));  
            s.setSUsername(rs.getString("SUsername"));  
            s.setSPassword(rs.getString("SPassword"));  
            s.setSPosition(rs.getString("SPosition"));   
            list.add(s);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}
public static int save(staff s){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  "insert into staff(SUsername,SPassword,SPosition) values(?,?,?)");  
        ps.setString(1,s.getSUsername());  
        ps.setString(2,s.getSPassword());  
        ps.setString(3,s.getSPosition());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}
public static int update(staff s){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  "update staff set SUsername=?,SPassword=?,SPosition=? where SId=?");  
        ps.setString(1,s.getSUsername());  
        ps.setString(2,s.getSPassword());  
        ps.setString(3,s.getSPosition()); 
        ps.setInt(4,s.getSId()); 
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
} 
public static staff getRecordById(int SId){  
    staff s=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from staff where SId=?");  
        ps.setInt(1,SId);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            s=new staff();  
            s.setSId(rs.getInt("SId"));  
            s.setSUsername(rs.getString("SUsername"));  
            s.setSPassword(rs.getString("SPassword"));  
            s.setSPosition(rs.getString("SPosition"));
        }  
    }catch(Exception e){System.out.println(e);}  
    return s;  
}
public static int delete(staff s){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from staff where SId=?");  
        ps.setInt(1,s.getSId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}
}