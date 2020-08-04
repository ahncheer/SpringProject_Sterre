package com.lec.sterre_test.member.command;

import java.util.Arrays;
import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.member.C;
import com.lec.sterre_test.member.beans.MWriteDTO;
import com.lec.sterre_test.member.beans.MWriteDAO;

public class MViewCommand implements MCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		String username = (String)map.get("username");

//		BWriteDAO dao = new BWriteDAO();
//		BWriteDTO dto = dao.readByUid(uid);
//		model.addAttribute("list", Arrays.asList(dto));
		
		MWriteDAO dao = C.sqlSession.getMapper(MWriteDAO.class);
//		dao.incViewCnt(uid); // 조회수 증가
		
		MWriteDTO dto = dao.mselectByUseruid(username);  // 똑똑하게 BWriteDTO 를 리턴한다.
		model.addAttribute("list", Arrays.asList(dto));
		
		// Arrays.asList(new String[]{"aaa", "bbb"})
		// Arrays.asList("aaa", "bbb")

	}

}















