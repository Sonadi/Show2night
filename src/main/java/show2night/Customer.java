package show2night;

public class Customer {
    private int id;
    private String fname;
    private String lname;
    private String city;
    private String email;
    private String phone;
    private String username;
    private String password;
    
    public Customer(int id, String fname, String lname , String email,String city, String phone, String username, String password) {
	this.id = id;
	this.fname = fname;
	this.lname = lname;
	this.city = city;
	this.email = email;
	this.phone = phone;
	this.username = username;
	this.password = password;
    }

    public int getid() {
        return id;
    }

    public String getfname() {
        return fname;
    }

    public String getemail() {
        return email;
    }

    public String getphone() {
        return phone;
    }

    public String getusername() {
        return username;
    }

    public String getpassword() {
        return password;
    }

	public String getlname() {
		return lname;
	}

	public String getcity() {
		return city;
	}    
}
