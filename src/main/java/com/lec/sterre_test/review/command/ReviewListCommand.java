package com.lec.sterre_test.review.command;

import org.springframework.ui.Model;

import com.lec.sterre_test.buy.C;
import com.lec.sterre_test.review.beans.ReviewWriteDAO;

public class ReviewListCommand implements ReviewCommand {

	@Override
	public void execute(Model model) {
//		BWriteDAO dao = new BWriteDAO();
//		List<BWriteDTO> list = dao.select();
//		model.addAttribute("list", list);

		// MyBatis 사용
		ReviewWriteDAO dao = C.sqlSession.getMapper(ReviewWriteDAO.class);
		model.addAttribute("list", dao.select());
		
	}

}


















