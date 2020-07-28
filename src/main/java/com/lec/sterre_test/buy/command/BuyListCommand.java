package com.lec.sterre_test.buy.command;

import org.springframework.ui.Model;

import com.lec.sterre_test.buy.C;
import com.lec.sterre_test.buy.beans.BuyWriteDAO;

public class BuyListCommand implements BuyCommand {

	@Override
	public void execute(Model model) {
//		BWriteDAO dao = new BWriteDAO();
//		List<BWriteDTO> list = dao.select();
//		model.addAttribute("list", list);

		// MyBatis 사용
		BuyWriteDAO dao = C.sqlSession.getMapper(BuyWriteDAO.class);
		model.addAttribute("list", dao.select());
		
	}

}


















