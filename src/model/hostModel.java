package model;

public class hostModel {
	
	private String fname;
	private String lname;
	private String email;
	private String address;
	private String city;
	private String state;
	private String zip;
	private String capacity;
	private String type;
	
	
	public hostModel() {
	}

	public hostModel(String fname, String lname, String email, String address, String city, String state, String zip,
			String capacity, String type) {
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.address = address;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.capacity = capacity;
		this.type = type;
	}

	public String toString() {
		return "First name: " + fname + 
				"\n last name=" + lname + 
				", email = " + email + 
				", address = " + address + 
				", city = " + city + 
				", state = " + state + 
				", zip = " + zip + 
				", capacity = " + capacity + 
				", type = " + type;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getCapacity() {
		return capacity;
	}

	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	

}
