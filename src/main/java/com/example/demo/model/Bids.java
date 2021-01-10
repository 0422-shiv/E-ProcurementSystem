package com.example.demo.model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Bids")
public class Bids{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="t")
	int t;
	
	@Column(name="prodname")
	String prodname;
	
	@Column(name="username")
	String username;
	
	@Column(name="Quoted_value")
	private float Quoted_value;
	
	@Column(name="detail")
	private String detail;

	
	public int getT() {
		return t;
	}

	public void setT(int t) {
		this.t = t;
	}

	public String getProdname() {
		return prodname;
	}

	public void setProdname(String prodname) {
		this.prodname = prodname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public float getQuoted_value() {
		return Quoted_value;
	}

	public void setQuoted_value(float quoted_value) {
		Quoted_value = quoted_value;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	
	

	

	
}
