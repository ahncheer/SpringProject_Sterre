package com.lec.sterre_test.goods.command;

import java.util.Arrays;
import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.goods.C;
import com.lec.sterre_test.goods.beans.GWriteDTO;
import com.lec.sterre_test.goods.beans.GWriteDAO;

public class GViewCommand implements GCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int goodsuid = (Integer)map.get("goodsuid");

//		BWriteDAO dao = new BWriteDAO();
//		BWriteDTO dto = dao.readByUid(uid);
//		model.addAttribute("list", Arrays.asList(dto));
		
		GWriteDAO dao = C.sqlSession.getMapper(GWriteDAO.class);
//		dao.incViewCnt(uid); // 조회수 증가
		
		GWriteDTO dto = dao.goodsSelectByUid(goodsuid);  // 똑똑하게 BWriteDTO 를 리턴한다.
		model.addAttribute("list", Arrays.asList(dto));
		
		// Arrays.asList(new String[]{"aaa", "bbb"})
		// Arrays.asList("aaa", "bbb")

	}

}















