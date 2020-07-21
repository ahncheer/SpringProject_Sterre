package com.lec.sterre_test.goods.beans;

import java.sql.Timestamp;

public class GWriteDTO {
	private int goodsuid;    
	private String goodsname;   
	private int goodsprice; 
	private String goodsContent; 
	private Timestamp goodsregdate;  
	private int goodsSort;  
	private int goodsCustom;  
	private int goodsTotal;  
	private int goodsLeft;  
	private int goodsLike;  
	private String goodspic1; 
	private String goodspic2;
	
	
	
	public GWriteDTO() {
		super();
	}
	public GWriteDTO(int goodsuid, String goodsname, int goodsprice, String goodsContent, Timestamp goodsregdate,
			int goodsSort, int goodsCustom, int goodsTotal, int goodsLeft, int goodsLike, String goodspic1,
			String goodspic2) {
		super();
		this.goodsuid = goodsuid;
		this.goodsname = goodsname;
		this.goodsprice = goodsprice;
		this.goodsContent = goodsContent;
		this.goodsregdate = goodsregdate;
		this.goodsSort = goodsSort;
		this.goodsCustom = goodsCustom;
		this.goodsTotal = goodsTotal;
		this.goodsLeft = goodsLeft;
		this.goodsLike = goodsLike;
		this.goodspic1 = goodspic1;
		this.goodspic2 = goodspic2;
	}
	@Override
	public String toString() {
		return "GWriteDTO [goodsuid=" + goodsuid + ", goodsname=" + goodsname + ", goodsprice=" + goodsprice
				+ ", goodsContent=" + goodsContent + ", goodsregdate=" + goodsregdate + ", goodsTotal=" + goodsTotal
				+ ", goodsSort=" + goodsSort + ", goodsCustom=" + goodsCustom + ", goodsLeft=" + goodsLeft
				+ ", goodsLike=" + goodsLike + ", goodspic1=" + goodspic1 + ", goodspic2=" + goodspic2 + "]";
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
	public int getGoodsSort() {
		return goodsSort;
	}
	public void setGoodsSort(int goodsSort) {
		this.goodsSort = goodsSort;
	}
	public int getGoodsCustom() {
		return goodsCustom;
	}
	public void setGoodsCustom(int goodsCustom) {
		this.goodsCustom = goodsCustom;
	}
	public int getGoodsLeft() {
		return goodsLeft;
	}
	public void setGoodsLeft(int goodsLeft) {
		this.goodsLeft = goodsLeft;
	}
	public int getGoodsLike() {
		return goodsLike;
	}
	public void setGoodsLike(int goodsLike) {
		this.goodsLike = goodsLike;
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
