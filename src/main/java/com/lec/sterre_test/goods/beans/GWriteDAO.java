package com.lec.sterre_test.goods.beans;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface GWriteDAO {
	public List<GWriteDTO> select();
	public int goodsInsert(final GWriteDTO dto);
	public int goodsInsert(String goodsname, int goodsprice, String goodsContent,
			int goodsTotal, int goodsLeft, String goodspic1, String goodspic2);
	//public BWriteDTO readByUid(final int uid);
	public GWriteDTO goodsSelectByUid(final int goodsuid);
	public int goodsUpdate(final GWriteDTO dto);
	public int goodsUpdate(int goodsuid, @Param("a") GWriteDTO dto);
	public int goodsDeleteByUid(final int goodsuid);
	
//	public int incViewCnt(int uid);   // 조회수 증가
	
	public GWriteDTO searchBySubject(String subject);
	
}











