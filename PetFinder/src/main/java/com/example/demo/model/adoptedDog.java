package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "AdoptedDog")
public class adoptedDog {
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	private Integer adoptedid;
	private String adopteddogname;
	private String adoptedname;
	private String adoptedemail;
	public Integer getAdoptedid() {
		return adoptedid;
	}
	public void setAdoptedid(Integer adoptedid) {
		this.adoptedid = adoptedid;
	}
	public String getAdopteddogname() {
		return adopteddogname;
	}
	public void setAdopteddogname(String adopteddogname) {
		this.adopteddogname = adopteddogname;
	}
	public String getAdoptedname() {
		return adoptedname;
	}
	public void setAdoptedname(String adoptedname) {
		this.adoptedname = adoptedname;
	}
	public String getAdoptedemail() {
		return adoptedemail;
	}
	public void setAdoptedemail(String adoptedemail) {
		this.adoptedemail = adoptedemail;
	}
	@Override
	public String toString() {
		return "adoptedDog [adoptedid=" + adoptedid + ", adopteddogname=" + adopteddogname + ", adoptedname="
				+ adoptedname + ", adoptedemail=" + adoptedemail + "]";
	}
	
	

}
