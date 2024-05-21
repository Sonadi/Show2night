package show2night;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class ho
 */
public class ho extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ho() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		jakarta.servlet.http.HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
	
		if (username == null || username.isEmpty()) {
	       
	        String errorMessage = "Username not found. Please login again."; 

	        String jsScript = "<script type='text/javascript'>alert('" + errorMessage + "');</script>";
	        response.getWriter().println(jsScript);
	        response.setContentType("home.jsp");
	        response.getWriter().println(jsScript);
	        
	    } else {
	    	
	    	 List<Customer> cusDetails = CustomerDBUtil.getCustomer(username);
	            
             request.setAttribute("cusDetails", cusDetails);
	    	jakarta.servlet.RequestDispatcher dis2 = request.getRequestDispatcher("useraccount.jsp");
			dis2.forward(request, response);
	    }

	}

}

