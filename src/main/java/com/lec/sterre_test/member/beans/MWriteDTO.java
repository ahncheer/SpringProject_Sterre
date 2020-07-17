package com.lec.sterre_test.member.beans;

import java.sql.Timestamp;

public class MWriteDTO {
	private String username;    
	private String useremail; 
	private String password; 
	private int useruid;  
	private String usertel; 
	private Timestamp userregdate;   
	private int useralarm;  
	private String userAdd; 
	private int enabled;
	
	public MWriteDTO() {
		super();
	}
	public MWriteDTO(String username, String useremail, String password, int useruid, String usertel,
			Timestamp userregdate, int useralarm, String userAdd, int enabled) {
		super();
		this.username = username;
		this.useremail = useremail;
		this.password = password;
		this.useruid = useruid;
		this.usertel = usertel;
		this.userregdate = userregdate;
		this.useralarm = useralarm;
		this.userAdd = userAdd;
		this.enabled = enabled;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getUseruid() {
		return useruid;
	}
	public void setUseruid(int useruid) {
		this.useruid = useruid;
	}
	public String getUsertel() {
		return usertel;
	}
	public void setUsertel(String usertel) {
		this.usertel = usertel;
	}
	public Timestamp getUserregdate() {
		return userregdate;
	}
	public void setUserregdate(Timestamp userregdate) {
		this.userregdate = userregdate;
	}
	public int getUseralarm() {
		return useralarm;
	}
	public void setUseralarm(int useralarm) {
		this.useralarm = useralarm;
	}
	public String getUserAdd() {
		return userAdd;
	}
	public void setUserAdd(String userAdd) {
		this.userAdd = userAdd;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}  
	
	
	
}
