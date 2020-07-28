package com.lec.sterre_test.buy.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.buy.C;
import com.lec.sterre_test.buy.beans.BuyWriteDTO;
import com.lec.sterre_test.buy.beans.BuyWriteDAO;

public class BuyUpdateCommand implements BuyCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		BuyWriteDTO dto = (BuyWriteDTO)map.get("dto");

//		BWriteDAO dao = new BWriteDAO();
//		int cnt = dao.update(dto);
//		model.addAttribute("result", cnt);
		
		BuyWriteDAO dao = C.sqlSession.getMapper(BuyWriteDAO.class);
		
		//model.addAttribute("result", dao.update(dto));
		model.addAttribute("result", dao.buyUpdate(dto.getBuyuid(), dto));
	}

}












