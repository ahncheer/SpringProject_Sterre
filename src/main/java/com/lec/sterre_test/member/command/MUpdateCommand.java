package com.lec.sterre_test.member.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.member.C;
import com.lec.sterre_test.member.beans.MWriteDTO;
import com.lec.sterre_test.member.beans.MWriteDAO;

public class MUpdateCommand implements MCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		MWriteDTO dto = (MWriteDTO)map.get("dto");

//		BWriteDAO dao = new BWriteDAO();
//		int cnt = dao.update(dto);
//		model.addAttribute("result", cnt);
		
		MWriteDAO dao = C.sqlSession.getMapper(MWriteDAO.class);
		
		//model.addAttribute("result", dao.update(dto));
		model.addAttribute("result", dao.mupdate(dto.getUseruid(), dto));
	}

}












