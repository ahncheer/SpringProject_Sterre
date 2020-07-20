package com.lec.sterre_test.goods.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lec.sterre_test.goods.C;
import com.lec.sterre_test.goods.beans.GWriteDTO;
import com.lec.sterre_test.goods.command.GCommand;
import com.lec.sterre_test.goods.command.GDeleteCommand;
import com.lec.sterre_test.goods.command.GListCommand;
import com.lec.sterre_test.goods.command.GSelectCommand;
import com.lec.sterre_test.goods.command.GUpdateCommand;
import com.lec.sterre_test.goods.command.GViewCommand;
import com.lec.sterre_test.goods.command.GWriteCommand;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	
	private GCommand command;
	
	// MyGabatis
	private SqlSession sqlSession;
	
	public GoodsController() {
		super();
		System.out.println("GoodsController() 생성");
	}
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		C.sqlSession = sqlSession;
	}

	@RequestMapping("/goodsList")
	public String list(Model model) {
		command = new GListCommand();
		command.execute(model);
		return "goods/goodsList";
	}
	
	@RequestMapping("/goodsWrite")
	public String write(Model model) {
		return "goods/goodsWrite";
	}
	
	@PostMapping("/goodsWriteOk")
	public void writeOk(GWriteDTO dto, Model model) {
		model.addAttribute("dto", dto);
		new GWriteCommand().execute(model);
//		return "goods/goodsWriteOk";
	}
	
	@RequestMapping("/goodsView")
	public String view(int goodsuid, Model model) {
		model.addAttribute("goodsuid", goodsuid);
		new GViewCommand().execute(model);
		return "goods/goodsView";
	}
	
	@RequestMapping("/goodsUpdate")
	public void update(int goodsuid, Model model) {
		model.addAttribute("goodsuid", goodsuid);
		new GSelectCommand().execute(model);
//		return "goods/update";
	}
	
	@RequestMapping(value = "/goodsUpdateOk", method = RequestMethod.POST)
	public String updateOk(GWriteDTO dto, Model model) {
		model.addAttribute("dto", dto);
		new GUpdateCommand().execute(model);
		return "goods/goodsUpdateOk";
	}
	
	@RequestMapping("/goodsDeleteOk")
	public String deleteOk(int goodsuid, Model model) {
		model.addAttribute("goodsuid", goodsuid);
		new GDeleteCommand().execute(model);
		return "goods/goodsDeleteOk";
	}
	
	
	
}













