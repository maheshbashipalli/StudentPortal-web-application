package com.vcube.Logincon;

public class StudentDTO {

	private String firstname;
	private String lastname;
	private String email;
	private String gender;
	private String phone;
	private String course;
	private int sno;

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public int getSno() {
		return sno;
	}

	public void setSno(int sno2) {
		this.sno = sno2;
	}

//		
	public StudentDTO(String firstname, String lastname, String email, String gender, String phone, String course,
			int sno

	) {
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.gender = gender;
		this.phone = phone;
		this.course = course;
		this.sno = sno;
	}

	public StudentDTO() {

	}

	public void setSno(String sno2) {

	}

}
