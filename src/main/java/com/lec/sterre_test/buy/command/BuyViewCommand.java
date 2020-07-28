package com.lec.sterre_test.buy.command;

import java.util.Arrays;
import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.buy.C;
import com.lec.sterre_test.buy.beans.BuyWriteDTO;
import com.lec.sterre_test.buy.beans.BuyWriteDAO;

public class BuyViewCommand implements BuyCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int buyuid = (Integer)map.get("buyuid");

//		BWriteDAO dao = new BWriteDAO();
//		BWriteDTO dto = dao.readByUid(uid);
//		model.addAttribute("list", Arrays.asList(dto));
		
		BuyWriteDAO dao = C.sqlSession.getMapper(BuyWriteDAO.class);
//		dao.incViewCnt(uid); // 조회수 증가
		
		BuyWriteDTO dto = dao.buySelectByUid(buyuid);  // 똑똑하게 BWriteDTO 를 리턴한다.
		model.addAttribute("list", Arrays.asList(dto));
		
		// Arrays.asList(new String[]{"aaa", "bbb"})
		// Arrays.asList("aaa", "bbb")

	}

}















