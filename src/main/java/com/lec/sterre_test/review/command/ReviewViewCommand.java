package com.lec.sterre_test.review.command;

import java.util.Arrays;
import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.review.C;
import com.lec.sterre_test.review.beans.ReviewWriteDTO;
import com.lec.sterre_test.review.beans.ReviewWriteDAO;

public class ReviewViewCommand implements ReviewCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int reviewuid = (Integer)map.get("reviewuid");

//		BWriteDAO dao = new BWriteDAO();
//		BWriteDTO dto = dao.readByUid(uid);
//		model.addAttribute("list", Arrays.asList(dto));
		
		ReviewWriteDAO dao = C.sqlSession.getMapper(ReviewWriteDAO.class);
//		dao.incViewCnt(uid); // 조회수 증가
		
		ReviewWriteDTO dto = dao.reviewSelectByUid(reviewuid);  // 똑똑하게 BWriteDTO 를 리턴한다.
		model.addAttribute("list", Arrays.asList(dto));
		
		// Arrays.asList(new String[]{"aaa", "bbb"})
		// Arrays.asList("aaa", "bbb")

	}

}















