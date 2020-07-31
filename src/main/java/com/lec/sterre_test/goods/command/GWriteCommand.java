package com.lec.sterre_test.goods.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.goods.C;
import com.lec.sterre_test.goods.beans.GWriteDTO;
import com.lec.sterre_test.goods.beans.GWriteDAO;
import com.lec.sterre_test.goods.beans.GWriteDTO;

public class GWriteCommand implements GCommand {

	@Override
	public void execute(Model model) {
		
		// Model 안에 있는 값(attribute) 꺼내기
		Map<String, Object> map = model.asMap();
		GWriteDTO dto = (GWriteDTO)map.get("dto");

//		BWriteDAO dao = new BWriteDAO();
//		int result = dao.insert(dto);
//		model.addAttribute("result", result);
		
		
		
		// MyBatis 사용
		GWriteDAO dao = C.sqlSession.getMapper(GWriteDAO.class);
		model.addAttribute("result", dao.goodsInsert(dto));
		
		System.out.println("생성된 Goodsuid 는 " + dto.getGoodsuid());
		
		//model.addAttribute("result",
		//		dao.insert(dto.getSubject(), dto.getContent(), dto.getName()));
		
		
		
	}
	
	
	
		
		

}











