package com.lec.sterre_test.goods.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.goods.C;
import com.lec.sterre_test.goods.beans.GWriteDAO;

public class GDeleteCommand implements GCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int goodsuid = (Integer)map.get("goodsuid");

//		BWriteDAO dao = new BWriteDAO();
//		int cnt = dao.deleteByUid(uid);
//		model.addAttribute("result", cnt);
		
		GWriteDAO dao = C.sqlSession.getMapper(GWriteDAO.class);	
		model.addAttribute("result", dao.goodsDeleteByUid(goodsuid));
		
	}

}














