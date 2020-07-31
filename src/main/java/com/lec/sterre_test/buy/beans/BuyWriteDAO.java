package com.lec.sterre_test.buy.beans;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface BuyWriteDAO {
	public List<BuyWriteDTO> select();
	public int buyInsert(final BuyWriteDTO dto);
	public int buyInsert2(final BuyWriteDTO dto);
	public int buyInsert(int buyuid, String username, String goodsname, int buynum);
	//public BWriteDTO readByuseruid(final int useruid);
	public BuyWriteDTO buySelectByUid(final int buyuid);
	public int buyUpdate(final BuyWriteDTO dto);
	public int buyUpdate(int buyuid, @Param("a") BuyWriteDTO dto);
	public int buyDeleteByUid(final int buyuid);
	
//	public int incViewCnt(int useruid);   // 조회수 증가
	
	public BuyWriteDTO searchBySubject(String subject);
	
}











