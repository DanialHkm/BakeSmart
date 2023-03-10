package BAKECrud;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class staffLoginServlet
 */
public class staffLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public staffLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String SUsername = request.getParameter("SUsername");
        String SPassword = request.getParameter("SPassword");
        
        String url = "jdbc:mysql://localhost:3306/bakesmart";
        String dbUsername = "root";
        String dbPassword = "";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, dbUsername, dbPassword);
            PreparedStatement ps = con.prepareStatement("SELECT * FROM staff WHERE SUsername = ? AND SPassword = ?");
            ps.setString(1, SUsername);
            ps.setString(2, SPassword);
            ResultSet result = ps.executeQuery();
            
            if (result.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("SUsername", SUsername);
                response.sendRedirect("listStaff.jsp");
            } else {
                request.setAttribute("errorMessage", "Sorry, incorrect username or password. Please try again.");
                RequestDispatcher rd = request.getRequestDispatcher("staffLogin.jsp");
                rd.forward(request, response);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
        }
    }

}
