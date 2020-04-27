package com.jeet.startup.model;

import java.io.Serializable;



public class User implements Serializable {
	
       private static final long serialVersionUID = 1L;

	   protected int id;	
	   protected String name;
	   protected String email;
	   
	   protected String username;
	   protected String password;
	   protected String phone;
	   
	   public User() {
		   
	   }

	public User(int id, String name, String email,String username, String password, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.username = username;
		this.password = password;
		this.phone = phone;
	}
	 
	public User(String name, String email,String username, String password, String phone) {
		super();
		this.name = name;
		this.email = email;
		this.username = username;
		this.password = password;
		this.phone = phone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}


}
