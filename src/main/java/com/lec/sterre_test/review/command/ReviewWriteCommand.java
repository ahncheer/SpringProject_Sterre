package com.lec.sterre_test.review.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.review.C;
import com.lec.sterre_test.review.beans.ReviewWriteDTO;
import com.lec.sterre_test.review.beans.ReviewWriteDAO;

public class ReviewWriteCommand implements ReviewCommand {

	@Override
	public void execute(Model model) {
		
		// Model 안에 있는 값(attribute) 꺼내기
		Map<String, Object> map = model.asMap();
		ReviewWriteDTO dto = (ReviewWriteDTO)map.get("dto");

//		BWriteDAO dao = new BWriteDAO();
//		int result = dao.insert(dto);
//		model.addAttribute("result", result);
		
		// MyBatis 사용
		ReviewWriteDAO dao = C.sqlSession.getMapper(ReviewWriteDAO.class);
		model.addAttribute("result", dao.reviewInsert(dto));
		
		System.out.println("생성된 review uid 는 " + dto.getReviewuid());
		
		//model.addAttribute("result",
		//		dao.insert(dto.getSubject(), dto.getContent(), dto.getName()));
		
		
		
	}

}











