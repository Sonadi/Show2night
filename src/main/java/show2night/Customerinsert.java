package show2night;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class Customerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Customerinsert() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("firstName");
		String lname = request.getParameter("lastName");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String city = request.getParameter("city");
		String username = request.getParameter("userName");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertcustomer(fname, lname , email,city, phone, username, password);
		
		if(isTrue == true) {
			jakarta.servlet.RequestDispatcher dis = request.getRequestDispatcher("log.jsp");
			dis.forward(request, response);
		} else {
			jakarta.servlet.RequestDispatcher dis2 = request.getRequestDispatcher("CustomerInsert.jsp");
			dis2.forward(request, response);
		}
	}

}

