package com.lec.sterre_test.review.command;

import java.util.Arrays;
import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.review.C;
import com.lec.sterre_test.review.beans.ReviewWriteDAO;

public class ReviewSelectCommand implements ReviewCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int reviewuid = (Integer)map.get("reviewuid");

//		BWriteDAO dao = new BWriteDAO();
//		BWriteDTO dto = dao.selectByUid(uid);
//		model.addAttribute("list", Arrays.asList(dto));
		
		ReviewWriteDAO dao = C.sqlSession.getMapper(ReviewWriteDAO.class);
		model.addAttribute("list", Arrays.asList(dao.reviewSelectByUid(reviewuid)));
		

	}

}















