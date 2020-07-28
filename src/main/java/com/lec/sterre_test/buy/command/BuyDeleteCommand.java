package com.lec.sterre_test.buy.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.buy.C;
import com.lec.sterre_test.buy.beans.BuyWriteDAO;

public class BuyDeleteCommand implements BuyCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int buyuid = (Integer)map.get("buyuid");

//		BWriteDAO dao = new BWriteDAO();
//		int cnt = dao.deleteByUid(uid);
//		model.addAttribute("result", cnt);
		
		BuyWriteDAO dao = C.sqlSession.getMapper(BuyWriteDAO.class);	
		model.addAttribute("result", dao.buyDeleteByUid(buyuid));
		
	}

}














