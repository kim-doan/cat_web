package com.cat.web.member.vo;

public class MemberVO {
	private String id;
	private String password;
	private String name;
	private String ssnum;
	private String email;
	private String phone;
	private int zipcode;
	private String address;
	private String sex;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSsnum() {
		return ssnum;
	}
	public void setSsnum(String ssnum) {
		this.ssnum = ssnum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", ssnum=" + ssnum + ", email="
				+ email + ", phone=" + phone + ", zipcode=" + zipcode + ", address=" + address + ", sex=" + sex + "]";
	}
}
