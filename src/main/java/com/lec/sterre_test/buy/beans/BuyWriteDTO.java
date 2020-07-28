package com.lec.sterre_test.buy.beans;

import java.sql.Timestamp;

public class BuyWriteDTO {
	private int buyuid;  
	private String username;    
	private int goodsuid;  
	private int buynum; 
	private Timestamp buydate;
	
	public BuyWriteDTO() {
		super();
	}
	public BuyWriteDTO(int buyuid, String username, int goodsuid, int buynum, Timestamp buydate) {
		super();
		this.buyuid = buyuid;
		this.username = username;
		this.goodsuid = goodsuid;
		this.buynum = buynum;
		this.buydate = buydate;
	}
	@Override
	public String toString() {
		return "BuyWriteDTO [buyuid=" + buyuid + ", username=" + username + ", goodsuid=" + goodsuid + ", buynum="
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
	public int getGoodsuid() {
		return goodsuid;
	}
	public void setGoodsuid(int goodsuid) {
		this.goodsuid = goodsuid;
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
