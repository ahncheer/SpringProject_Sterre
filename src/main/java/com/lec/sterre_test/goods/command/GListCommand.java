package com.lec.sterre_test.goods.command;

import org.springframework.ui.Model;

import com.lec.sterre_test.goods.C;
import com.lec.sterre_test.goods.beans.GWriteDAO;

public class GListCommand implements GCommand {

	@Override
	public void execute(Model model) {
//		BWriteDAO dao = new BWriteDAO();
//		List<BWriteDTO> list = dao.select();
//		model.addAttribute("list", list);

		// MyBatis 사용
		GWriteDAO dao = C.sqlSession.getMapper(GWriteDAO.class);
		model.addAttribute("list", dao.select());
		
	}

}


















