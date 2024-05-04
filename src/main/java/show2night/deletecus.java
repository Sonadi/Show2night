package show2night;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class deletecus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public deletecus() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		jakarta.servlet.http.HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
	        
	        if (username != null && !username.isEmpty()) {
	            try {
	                

	                boolean isDeleted = CustomerDBUtil.deleteCustomer(username);

	                if (isDeleted) {
	                   
	                    response.sendRedirect("log.jsp");
	                } else {
	                   
	                    response.sendRedirect("useraccount.jsp"); 
	                }
	            } catch (NumberFormatException e) {
	                
	                response.sendRedirect("useraccount.jsp"); 
	            }
	        } else {
	           
	            response.sendRedirect("useraccount.jsp"); 
	        }
	    }
	}


