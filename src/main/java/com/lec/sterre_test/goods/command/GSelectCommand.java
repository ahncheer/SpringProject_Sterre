package com.lec.sterre_test.goods.command;

import java.util.Arrays;
import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.goods.C;
import com.lec.sterre_test.goods.beans.GWriteDAO;

public class GSelectCommand implements GCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int goodsuid = (Integer)map.get("goodsuid");

//		BWriteDAO dao = new BWriteDAO();
//		BWriteDTO dto = dao.selectByUid(uid);
//		model.addAttribute("list", Arrays.asList(dto));
		
		GWriteDAO dao = C.sqlSession.getMapper(GWriteDAO.class);
		model.addAttribute("list", Arrays.asList(dao.goodsSelectByUid(goodsuid)));
		

	}

}















