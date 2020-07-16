package com.lec.sterre_test.board.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.board.C;
import com.lec.sterre_test.board.beans.BWriteDTO;
import com.lec.sterre_test.board.beans.IWriteDAO;

public class BUpdateCommand implements BCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		BWriteDTO dto = (BWriteDTO)map.get("dto");

//		BWriteDAO dao = new BWriteDAO();
//		int cnt = dao.update(dto);
//		model.addAttribute("result", cnt);
		
		IWriteDAO dao = C.sqlSession.getMapper(IWriteDAO.class);
		
		//model.addAttribute("result", dao.update(dto));
		model.addAttribute("result", dao.update(dto.getUid(), dto));
	}

}












