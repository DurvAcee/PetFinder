package com.example.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "Dog")
public class Dog {

	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	private Integer dogid;
	private String dogname;
	private String dogbreed;
	private String doggender;
	private String dogstatus;
	private String dogdob;
	 @Lob
	 @Column(columnDefinition="LONGBLOB")
	 private String dogfile;

	public Integer getDogid() {
		return dogid;
	}
	public void setDogid(Integer dogid) {
		this.dogid = dogid;
	}
	public String getDogname() {
		return dogname;
	}
	public void setDogname(String dogname) {
		this.dogname = dogname;
	}
	public String getDogbreed() {
		return dogbreed;
	}
	public void setDogbreed(String dogbreed) {
		this.dogbreed = dogbreed;
	}
	public String getDoggender() {
		return doggender;
	}
	public void setDoggender(String doggender) {
		this.doggender = doggender;
	}
	public String getDogstatus() {
		return dogstatus;
	}
	public void setDogstatus(String dogstatus) {
		this.dogstatus = dogstatus;
	}
	public String getDogdob() {
		return dogdob;
	}
	public void setDogdob(String dogdob) {
		this.dogdob = dogdob;
	}
	public String getDogfile() {
		return dogfile;
	}
	public void setDogfile(String dogfile) {
		this.dogfile = dogfile;
	}
	@Override
	public String toString() {
		return "Dog [dogid=" + dogid + ", dogname=" + dogname + ", dogbreed=" + dogbreed + ", doggender=" + doggender
				+ ", dogstatus=" + dogstatus + ", dogdob=" + dogdob + ", dogfile=" + dogfile + "]";
	}
	
		
	
	
	
	
	
}
