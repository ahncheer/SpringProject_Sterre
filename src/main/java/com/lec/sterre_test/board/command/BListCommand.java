package com.lec.sterre_test.board.command;

import org.springframework.ui.Model;

import com.lec.sterre_test.board.C;
import com.lec.sterre_test.board.beans.IWriteDAO;

public class BListCommand implements BCommand {

	@Override
	public void execute(Model model) {
//		BWriteDAO dao = new BWriteDAO();
//		List<BWriteDTO> list = dao.select();
//		model.addAttribute("list", list);

		// MyBatis 사용
		IWriteDAO dao = C.sqlSession.getMapper(IWriteDAO.class);
		model.addAttribute("list", dao.select());
		
	}

}


















