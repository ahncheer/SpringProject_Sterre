package com.lec.sterre_test.review.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.review.C;
import com.lec.sterre_test.review.beans.ReviewWriteDAO;

public class ReviewDeleteCommand implements ReviewCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int reviewuid = (Integer)map.get("reviewuid");

//		BWriteDAO dao = new BWriteDAO();
//		int cnt = dao.deleteByUid(uid);
//		model.addAttribute("result", cnt);
		
		ReviewWriteDAO dao = C.sqlSession.getMapper(ReviewWriteDAO.class);	
		model.addAttribute("result", dao.reviewDeleteByUid(reviewuid));
		
	}

}














