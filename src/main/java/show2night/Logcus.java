package show2night;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


/**
 * Servlet implementation class Logcus
 */
public class Logcus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logcus() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String userName = request.getParameter("username");
	        String password = request.getParameter("password");
	        
	        boolean isTrue = CustomerDBUtil.validate(userName, password);
	       
	        
	        if (isTrue) {
	            List<Customer> cusDetails = CustomerDBUtil.getCustomer(userName);
	            
	                request.setAttribute("cusDetails", cusDetails);
	                jakarta.servlet.RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
	                dis.forward(request, response);
	            
	        } else {
	            
	            response.sendRedirect("log.jsp");
	        }
	}

}
