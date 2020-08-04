package com.lec.sterre_test.member.command;

import java.util.Arrays;
import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.member.C;
import com.lec.sterre_test.member.beans.MWriteDAO;

public class MSelectCommand implements MCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		String username = (String)map.get("username");

//		BWriteDAO dao = new BWriteDAO();
//		BWriteDTO dto = dao.selectByUid(uid);
//		model.addAttribute("list", Arrays.asList(dto));
		
		MWriteDAO dao = C.sqlSession.getMapper(MWriteDAO.class);
		model.addAttribute("list", Arrays.asList(dao.mselectByUseruid(username)));
		

	}

}















