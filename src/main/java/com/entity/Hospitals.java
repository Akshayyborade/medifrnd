package com.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="medifrnd")
public class Hospitals {
	@Id
    private int id;
    private String hospitalName;
    private String location;
    private String city;
    private String state;
    private String address;
    private String contact;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHospitalName() {
		return hospitalName;
	}
	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public Hospitals(int id, String hospitalName, String location, String city, String state, String address,
			String contact) {
		super();
		this.id = id;
		this.hospitalName = hospitalName;
		this.location = location;
		this.city = city;
		this.state = state;
		this.address = address;
		this.contact = contact;
	}
	public Hospitals() {
		super();
		// TODO Auto-generated constructor stub
	}
    
    
}
