package com.lec.sterre_test.member.command;

import org.springframework.ui.Model;

import com.lec.sterre_test.member.C;
import com.lec.sterre_test.member.beans.MWriteDAO;

public class MListCommand implements MCommand {

	@Override
	public void execute(Model model) {
//		BWriteDAO dao = new BWriteDAO();
//		List<BWriteDTO> list = dao.select();
//		model.addAttribute("list", list);

		// MyBatis 사용
		MWriteDAO dao = C.sqlSession.getMapper(MWriteDAO.class);
		model.addAttribute("list", dao.select());
		
	}

}


















