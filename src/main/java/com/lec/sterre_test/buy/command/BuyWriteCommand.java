package com.lec.sterre_test.buy.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.buy.C;
import com.lec.sterre_test.buy.beans.BuyWriteDTO;
import com.lec.sterre_test.buy.beans.BuyWriteDAO;

public class BuyWriteCommand implements BuyCommand {

	@Override
	public void execute(Model model) {
		
		// Model 안에 있는 값(attribute) 꺼내기
		Map<String, Object> map = model.asMap();
		BuyWriteDTO dto = (BuyWriteDTO)map.get("dto");

//		BWriteDAO dao = new BWriteDAO();
//		int result = dao.insert(dto);
//		model.addAttribute("result", result);
		
		// MyBatis 사용
		BuyWriteDAO dao = C.sqlSession.getMapper(BuyWriteDAO.class);
		model.addAttribute("result", dao.buyInsert(dto));
		model.addAttribute("result", dao.buyInsert2(dto));
		
		System.out.println("생성된 buy uid 는 " + dto.getBuyuid());
		
		//model.addAttribute("result",
		//		dao.insert(dto.getSubject(), dto.getContent(), dto.getName()));
		
		
		
	}

}











