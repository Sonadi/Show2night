package show2night;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class edituserserver extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public edituserserver() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 
			String username = request.getParameter("username");
	        String fname = request.getParameter("fname");
	        String lname = request.getParameter("lname");
	        String email = request.getParameter("email");
	        String phone = request.getParameter("phone");
	        String city = request.getParameter("city");
	        

	        boolean isUpdated = CustomerDBUtil.updatetable(fname, lname, email, phone, city,username);

	        if (isUpdated) {
	           
	        	 List<Customer> cusDetails = CustomerDBUtil.getCus();
	             request.setAttribute("cusDetails", cusDetails);
	            request.getRequestDispatcher("admindash.jsp").forward(request, response);
	        } else {
	            response.sendRedirect("home.jsp");
	        }
	}

}
