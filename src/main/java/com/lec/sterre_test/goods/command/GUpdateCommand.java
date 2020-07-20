package com.lec.sterre_test.goods.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.sterre_test.goods.C;
import com.lec.sterre_test.goods.beans.GWriteDTO;
import com.lec.sterre_test.goods.beans.GWriteDAO;

public class GUpdateCommand implements GCommand {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		GWriteDTO dto = (GWriteDTO)map.get("dto");

//		BWriteDAO dao = new BWriteDAO();
//		int cnt = dao.update(dto);
//		model.addAttribute("result", cnt);
		
		GWriteDAO dao = C.sqlSession.getMapper(GWriteDAO.class);
		
		//model.addAttribute("result", dao.update(dto));
		model.addAttribute("result", dao.goodsUpdate(dto.getGoodsuid(), dto));
	}

}












