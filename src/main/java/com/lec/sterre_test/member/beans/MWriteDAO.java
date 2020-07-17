package com.lec.sterre_test.member.beans;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface MWriteDAO {
	public List<MWriteDTO> select();
	public int minsert(final MWriteDTO dto);
	public int minsert(String username, String useremail, String password , 
			String usertel, int useralarm, String userAdd);
	//public BWriteDTO readByuseruid(final int useruid);
	public MWriteDTO mselectByUseruid(final int useruid);
	public int mupdate(final MWriteDTO dto);
	public int mupdate(int useruid, @Param("a") MWriteDTO dto);
	public int mdeleteByUseruid(final int useruid);
	
//	public int incViewCnt(int useruid);   // 조회수 증가
	
	public MWriteDTO searchBySubject(String subject);
	
}











