package com.lec.sterre_test.review.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.review.C;
import com.lec.sterre_test.review.beans.ReviewWriteDTO;
import com.lec.sterre_test.review.beans.ReviewWriteDAO;

public class ReviewUpdateCommand implements ReviewCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		ReviewWriteDTO dto = (ReviewWriteDTO)map.get("dto");

//		BWriteDAO dao = new BWriteDAO();
//		int cnt = dao.update(dto);
//		model.addAttribute("result", cnt);
		
		ReviewWriteDAO dao = C.sqlSession.getMapper(ReviewWriteDAO.class);
		
		//model.addAttribute("result", dao.update(dto));
		model.addAttribute("result", dao.reviewUpdate(dto.getReviewuid(), dto));
	}

}












