package show2night;

import java.io.IOException;

import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("Logcus")
public class Logcus extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userName = request.getParameter("username");
        String password = request.getParameter("password");

        session.setAttribute("username", userName);

        boolean isTrue = CustomerDBUtil.validate(userName, password);

        if (isTrue) {
           
            List<Customer> cusDetails = CustomerDBUtil.getCustomer(userName);

            request.setAttribute("cusDetails", cusDetails);
            request.getRequestDispatcher("home.jsp").forward(request, response);

            
          
        } else {
           
            response.sendRedirect("log.jsp?error=invalid");
           
        }
    }

 
}
