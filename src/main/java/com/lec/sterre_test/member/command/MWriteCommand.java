package com.lec.sterre_test.member.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.member.C;
import com.lec.sterre_test.member.beans.MWriteDTO;
import com.lec.sterre_test.member.beans.MWriteDAO;

public class MWriteCommand implements MCommand {

	@Override
	public void execute(Model model) {
		
		// Model 안에 있는 값(attribute) 꺼내기
		Map<String, Object> map = model.asMap();
		MWriteDTO dto = (MWriteDTO)map.get("dto");

//		BWriteDAO dao = new BWriteDAO();
//		int result = dao.insert(dto);
//		model.addAttribute("result", result);
		
		// MyBatis 사용
		MWriteDAO dao = C.sqlSession.getMapper(MWriteDAO.class);
		model.addAttribute("result", dao.minsert(dto));
		model.addAttribute("result", dao.minsert2(dto));
		
		System.out.println("생성된 user uid 는 " + dto.getUseruid());
		
		//model.addAttribute("result",
		//		dao.insert(dto.getSubject(), dto.getContent(), dto.getName()));
		
		
		
	}

}











