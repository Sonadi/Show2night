package show2night;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	public static boolean validate(String username, String password) {
		
		try {
			con = db.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Customer> getCustomer(String userName) {
		
		ArrayList<Customer> RegisterdCustomer = new ArrayList<>();
		
		try {
			
			con = db.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String email = rs.getString(4);
				String city = rs.getString(5);
				String phone = rs.getString(6);
				String username = rs.getString(7);
				String password = rs.getString(8);
				
				Customer cus = new RegisterdCustomer(id,fname, lname , email,city, phone, username, password);
				RegisterdCustomer.add(cus);
			}
			
		} catch (Exception e) {
			
		}
		
		return RegisterdCustomer;	
	}
	 public static boolean insertcustomer(String fname, String lname , String email,String city, String phone, String username, String password) {
	    	
	    	boolean isSuccess = false;
	    	
	    	try {
	    		con = db.getConnection();
	    		stmt = con.createStatement();
	    	    String sql = "insert into customer values (0,'"+fname+"','"+lname+"','"+email+"','"+city+"','"+phone+"','"+username+"','"+password+"')";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	    }
	 
	

	 
	     

	     public static boolean updateCustomer(String id, String fname, String lname, String email, String phone, String city, String username) {
	         try {
	             con = db.getConnection();
	             String sql = "UPDATE customer SET fname=?, lname=?, email=?, phone=?, city=?, username=? WHERE id=?";
	             PreparedStatement pstmt = con.prepareStatement(sql);
	             pstmt.setString(1, fname);
	             pstmt.setString(2, lname);
	             pstmt.setString(3, email);
	             pstmt.setString(4, phone);
	             pstmt.setString(5, city);
	             pstmt.setString(6, username);
	             pstmt.setString(7, id);
	             int rowsUpdated = pstmt.executeUpdate();
	             return rowsUpdated > 0;
	         } catch (SQLException e) {
	             e.printStackTrace();
	             return false;
	         } finally {
	             try {
	                 if (con != null) {
	                     con.close();
	                 }
	             } catch (SQLException e) {
	                 e.printStackTrace();
	             }
	         }
	     }

	   
	   
	 

	 public static List<Customer> getCustomerDetails(String Id) {
	    	
	    	int convertedID = Integer.parseInt(Id);
	    	
	    	ArrayList<Customer> cus = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = db.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from customer where id='"+convertedID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
					String fname = rs.getString(2);
					String lname = rs.getString(3);
					String email = rs.getString(4);
					String city = rs.getString(5);
					String phone = rs.getString(6);
					String username = rs.getString(7);
					String password = rs.getString(8);
	    			
	    			Customer c = new Customer(id,fname, lname , email,city, phone, username, password);
	    			cus.add(c);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return cus;	
	    }
	 public static boolean deleteCustomer(String username) {
		 con = db.getConnection();
	        PreparedStatement stmt = null;

	        try {
	            
	            String sql = "DELETE FROM customer WHERE username = ?";
	            stmt = con.prepareStatement(sql);

	            
	            stmt.setString(1, username);

	          
	            int rowsAffected = stmt.executeUpdate();

	            
	            if (rowsAffected > 0) {
	            	String alertMessage = "Customer with username '" + username + "' deleted successfully.";
	                System.out.println("Executing JavaScript alert: " + alertMessage);
	                System.out.println("<script>alert('" + alertMessage + "');</script>");
	                return true; 
	            } else {
	                System.out.println("No customer found with username " + username);
	                return false; 
	            }

	        } catch (SQLException e) {
	            System.err.println("Error deleting customer: " + e.getMessage());
	            return false; 
	        } finally {
	            
	            if (stmt != null) {
	                try {
	                    stmt.close();
	                } catch (SQLException e) {
	                    System.err.println("Error closing statement: " + e.getMessage());
	                }
	            }
	            
	        }
}
	 
	    public static List<Customer> getCus() {
	        ArrayList<Customer> customers = new ArrayList<>();

	        try {
	            con = db.getConnection(); // Replace db.getConnection() with your method to get the connection
	            Statement stmt = con.createStatement();
	            String sql = "SELECT * FROM customer";
	            ResultSet rs = stmt.executeQuery(sql);

	            while (rs.next()) {
	                int id = rs.getInt("id");
	                String fname = rs.getString("fname");
	                String lname = rs.getString("lname");
	                String email = rs.getString("email");
	                String city = rs.getString("city");
	                String phone = rs.getString("phone");
	                String username = rs.getString("username");
	                String password = rs.getString("password");

	                Customer customer = new Customer(id, fname, lname, email, city, phone, username, password);
	               

	                customers.add(customer);
	            }

	            rs.close();
	            stmt.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	            // Handle the exception according to your application's requirements
	        } 

	        return customers;
	    }
	    
	    public static boolean updatetable(String fname, String lname, String email, String phone, String city, String username) {
	        try {
	            con = db.getConnection();
	            if (con == null) {
	                System.out.println("Failed to establish database connection.");
	                return false;
	            }

	            String sql = "UPDATE customer SET fname=?, lname=?, email=?, phone=?, city=? WHERE username=?";
	            System.out.println("SQL Query: " + sql); // Print SQL Query for debugging
	            
	            PreparedStatement pstmt = con.prepareStatement(sql);
	            pstmt.setString(1, fname);
	            pstmt.setString(2, lname);
	            pstmt.setString(3, email);
	            pstmt.setString(4, phone);
	            pstmt.setString(5, city);
	            pstmt.setString(6, username);

	            int rowsUpdated = pstmt.executeUpdate();
	            return rowsUpdated > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        } finally {
	            // Close resources in finally block
	            try {
	                if (con != null) {
	                    con.close();
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }

	    
}