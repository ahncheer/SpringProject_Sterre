package com.lec.sterre_test.goods.beans;

import java.sql.Timestamp;

public class GWriteDTO {
	private int goodsuid;    
	private String goodsname;   
	private int goodsprice; 
	private String goodsContent; 
	private Timestamp goodsregdate;  
	private int goodsTotal;  
	private int goodsLeft;  
	private String goodspic1; 
	private String goodspic2;
	
	public GWriteDTO() {
		super();
	}
	public GWriteDTO(int goodsuid, String goodsname, int goodsprice, String goodsContent, Timestamp goodsregdate,
			int goodsTotal, int goodsLeft, String goodspic1, String goodspic2) {
		super();
		this.goodsuid = goodsuid;
		this.goodsname = goodsname;
		this.goodsprice = goodsprice;
		this.goodsContent = goodsContent;
		this.goodsregdate = goodsregdate;
		this.goodsTotal = goodsTotal;
		this.goodsLeft = goodsLeft;
		this.goodspic1 = goodspic1;
		this.goodspic2 = goodspic2;
	}
	@Override
	public String toString() {
		return "GWriteDTO [goodsuid=" + goodsuid + ", goodsname=" + goodsname + ", goodsprice=" + goodsprice
				+ ", goodsContent=" + goodsContent + ", goodsregdate=" + goodsregdate + ", goodsTotal=" + goodsTotal
				+ ", goodsLeft=" + goodsLeft + ", goodspic1=" + goodspic1 + ", goodspic2=" + goodspic2 + "]";
	}
	public int getGoodsuid() {
		return goodsuid;
	}
	public void setGoodsuid(int goodsuid) {
		this.goodsuid = goodsuid;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public int getGoodsprice() {
		return goodsprice;
	}
	public void setGoodsprice(int goodsprice) {
		this.goodsprice = goodsprice;
	}
	public String getGoodsContent() {
		return goodsContent;
	}
	public void setGoodsContent(String goodsContent) {
		this.goodsContent = goodsContent;
	}
	public Timestamp getGoodsregdate() {
		return goodsregdate;
	}
	public void setGoodsregdate(Timestamp goodsregdate) {
		this.goodsregdate = goodsregdate;
	}
	public int getGoodsTotal() {
		return goodsTotal;
	}
	public void setGoodsTotal(int goodsTotal) {
		this.goodsTotal = goodsTotal;
	}
	public int getGoodsLeft() {
		return goodsLeft;
	}
	public void setGoodsLeft(int goodsLeft) {
		this.goodsLeft = goodsLeft;
	}
	public String getGoodspic1() {
		return goodspic1;
	}
	public void setGoodspic1(String goodspic1) {
		this.goodspic1 = goodspic1;
	}
	public String getGoodspic2() {
		return goodspic2;
	}
	public void setGoodspic2(String goodspic2) {
		this.goodspic2 = goodspic2;
	} 
	
	
	
}
