package com.lec.sterre_test.review.beans;

import java.sql.Timestamp;

public class ReviewWriteDTO {
	private int reviewuid;  
	private String username;    
	private String goodsname;  
	private String reviewcontent; 
	private Timestamp reviewdate;
	
	
	
	public ReviewWriteDTO() {
		super();
	}
	public ReviewWriteDTO(int reviewuid, String username, String goodsname, String reviewcontent,
			Timestamp reviewdate) {
		super();
		this.reviewuid = reviewuid;
		this.username = username;
		this.goodsname = goodsname;
		this.reviewcontent = reviewcontent;
		this.reviewdate = reviewdate;
	}
	@Override
	public String toString() {
		return "ReviewWriteDTO [reviewuid=" + reviewuid + ", username=" + username + ", goodsname=" + goodsname
				+ ", reviewcontent=" + reviewcontent + ", reviewdate=" + reviewdate + "]";
	}
	public int getReviewuid() {
		return reviewuid;
	}
	public void setReviewuid(int reviewuid) {
		this.reviewuid = reviewuid;
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
	public String getReviewcontent() {
		return reviewcontent;
	}
	public void setReviewcontent(String reviewcontent) {
		this.reviewcontent = reviewcontent;
	}
	public Timestamp getReviewdate() {
		return reviewdate;
	}
	public void setReviewdate(Timestamp reviewdate) {
		this.reviewdate = reviewdate;
	}
	
	
	
	
	
}
