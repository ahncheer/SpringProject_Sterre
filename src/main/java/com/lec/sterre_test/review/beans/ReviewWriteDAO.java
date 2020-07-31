package com.lec.sterre_test.review.beans;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface ReviewWriteDAO {
	public List<ReviewWriteDTO> select();
	public int reviewInsert(final ReviewWriteDTO dto);
	public int reviewInsert(int reviewuid, String username, String goodsname, String reviewcontent);
	//public BWriteDTO readByuseruid(final int useruid);
	public ReviewWriteDTO reviewSelectByUid(final int reviewuid);
	public int reviewUpdate(final ReviewWriteDTO dto);
	public int reviewUpdate(int reviewuid, @Param("a") ReviewWriteDTO dto);
	public int reviewDeleteByUid(final int reviewuid);
	
//	public int incViewCnt(int useruid);   // 조회수 증가
	
	public ReviewWriteDTO searchBySubject(String subject);
	
}











