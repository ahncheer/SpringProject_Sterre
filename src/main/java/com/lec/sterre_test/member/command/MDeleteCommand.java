package com.lec.sterre_test.member.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.member.C;
import com.lec.sterre_test.member.beans.MWriteDAO;

public class MDeleteCommand implements MCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int useruid = (Integer)map.get("useruid");

//		BWriteDAO dao = new BWriteDAO();
//		int cnt = dao.deleteByUid(uid);
//		model.addAttribute("result", cnt);
		
		MWriteDAO dao = C.sqlSession.getMapper(MWriteDAO.class);	
		model.addAttribute("result", dao.mdeleteByUseruid(useruid));
		
	}

}














