package DBCONNECT;

public class MemberVO {
	//Field
	private String id;
	private String pass;
	private String name;
	private String birth;
	private String gender;
	private String phone;
	private String email;
	private String zipcode;
	private String address;
	private String regdate;

	//Getter,Setter
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	//Constructor
	public MemberVO() {}
	
	public MemberVO(String id, String pass, String name, String birth, String gender, String phone, String email,
			String zipcode, String address, String regdate) {
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.zipcode = zipcode;
		this.address = address;
		this.regdate = regdate;
	}
	
	public MemberVO(String id, String name, String birth, String email, String regdate) {
		this.id = id;
		this.name = name;
		this.birth = birth;
		this.email = email;
		this.regdate = regdate;
	}
	
	//toString
	@Override
	public String toString() {
		String fmt = "<tr>";
		fmt		  += "<td>%s</td>";
		fmt		  += "<td>%s</td>";
		fmt		  += "<td>%s</td>";
		fmt		  += "<td>%s</td>";
		fmt		  += "<td>%s</td>";
		fmt		  += "</tr>";
		
		String msg = String.format(fmt, id, name, birth, email, regdate);		
		return msg;
	}
	
}
