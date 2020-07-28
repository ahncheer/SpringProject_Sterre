package com.lec.sterre_test.buy.command;

import java.util.Arrays;
import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.buy.C;
import com.lec.sterre_test.buy.beans.BuyWriteDAO;

public class BuySelectCommand implements BuyCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int buyuid = (Integer)map.get("buyuid");

//		BWriteDAO dao = new BWriteDAO();
//		BWriteDTO dto = dao.selectByUid(uid);
//		model.addAttribute("list", Arrays.asList(dto));
		
		BuyWriteDAO dao = C.sqlSession.getMapper(BuyWriteDAO.class);
		model.addAttribute("list", Arrays.asList(dao.buySelectByUid(buyuid)));
		

	}

}















