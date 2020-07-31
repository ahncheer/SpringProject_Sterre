package com.lec.sterre_test.buy.beans;

import java.sql.Timestamp;

public class BuyWriteDTO {
	private int buyuid;  
	private String username;    
	private String goodsname;  
	private int buynum; 
	private Timestamp buydate;
	
	
	
	public BuyWriteDTO() {
		super();
	}
	public BuyWriteDTO(int buyuid, String username, String goodsname, int buynum, Timestamp buydate) {
		super();
		this.buyuid = buyuid;
		this.username = username;
		this.goodsname = goodsname;
		this.buynum = buynum;
		this.buydate = buydate;
	}
	@Override
	public String toString() {
		return "BuyWriteDTO [buyuid=" + buyuid + ", username=" + username + ", goodsname=" + goodsname + ", buynum="
				+ buynum + ", buydate=" + buydate + "]";
	}
	public int getBuyuid() {
		return buyuid;
	}
	public void setBuyuid(int buyuid) {
		this.buyuid = buyuid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	public Timestamp getBuydate() {
		return buydate;
	}
	public void setBuydate(Timestamp buydate) {
		this.buydate = buydate;
	}
	
	
	
	
	
}
