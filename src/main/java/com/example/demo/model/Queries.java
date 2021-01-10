package com.example.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Queries")
public class Queries {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="qid")
	private int qid;
	@Column(name="T_id")
	private String T_id;
	@Column(name="Prod_name")
	private String Prod_name;
	@Column(name="query")
	private String query;
	
	@Column(name="Answer")
	private String Answer;

	

	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	public String getT_id() {
		return T_id;
	}

	public void setT_id(String t_id) {
		T_id = t_id;
	}

	public String getProd_name() {
		return Prod_name;
	}

	public void setProd_name(String prod_name) {
		Prod_name = prod_name;
	}

	public String getQuery() {
		return query;
	}

	public void setQuery(String query) {
		this.query = query;
	}

	public String getAnswer() {
		return Answer;
	}

	public void setAnswer(String answer) {
		Answer = answer;
	}

	
}

