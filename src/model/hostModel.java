package model;

public class hostModel {
	
	private int id;
	private String fname;
	private String lname;
	private String email;
	private String address;
	private String city;
	private String state;
	private String zip;
	private int capacity;
	private String type;
	private String profile;
	private String interests;
	private String pictureurl;
	
	public String getPictureurl() {
		return pictureurl;
	}

	public void setPictureurl(String pictureurl) {
		this.pictureurl = pictureurl;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getInterests() {
		return interests;
	}

	public void setInterests(String interests) {
		this.interests = interests;
	}
	
	public hostModel() {
	}

	public hostModel(int id, String fname, String lname, String email, String address, String city, String state, String zip,
			int capacity, String type) {
		this.id = id;
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

	@Override
	public String toString() {

		return  "id: " + id +
				"<br> First name: " + fname + 
				"<br> last name=" + lname + 
				"<br> email = " + email + 
				"<br> address = " + address + 
				"<br> city = " + city + 
				"<br> state = " + state + 
				"<br> zip = " + zip + 
				"<br> capacity = " + capacity + 
				"<br> type = " + type;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
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
