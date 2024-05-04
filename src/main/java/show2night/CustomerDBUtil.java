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
			con = DBconnect.getConnection();
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
			
			con = DBconnect.getConnection();
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
	    		con = DBconnect.getConnection();
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
	 
	 public static boolean updatecustomer(String id, String name, String email, String phone, String username, String password) {
	    	
	    	try {
	    		
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update customer set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'"
	    				+ "where id='"+id+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	 public static List<Customer> getCustomerDetails(String Id) {
	    	
	    	int convertedID = Integer.parseInt(Id);
	    	
	    	ArrayList<Customer> cus = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBconnect.getConnection();
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
		 con = DBconnect.getConnection();
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
}