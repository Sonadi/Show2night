package show2night;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class up extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("cusid");
        String fname = request.getParameter("fName");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
        String username = request.getParameter("uname");

        boolean isUpdated = CustomerDBUtil.updateCustomer(id, fname, lname, email, phone, city, username);

        if (isUpdated) {
            List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
            request.setAttribute("cusDetails", cusDetails);
            request.getRequestDispatcher("useraccount.jsp").forward(request, response);
        } else {
            response.sendRedirect("home.jsp");
        }
    }
}
