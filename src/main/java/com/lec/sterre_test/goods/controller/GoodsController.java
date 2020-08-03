package com.lec.sterre_test.goods.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.lec.sterre_test.goods.C;
import com.lec.sterre_test.goods.beans.GWriteDTO;
import com.lec.sterre_test.goods.command.GCommand;
import com.lec.sterre_test.goods.command.GDeleteCommand;
import com.lec.sterre_test.goods.command.GListCommand;
import com.lec.sterre_test.goods.command.GListCommand2;
import com.lec.sterre_test.goods.command.GSelectCommand;
import com.lec.sterre_test.goods.command.GUpdateCommand;
import com.lec.sterre_test.goods.command.GViewCommand;
import com.lec.sterre_test.goods.command.GWriteCommand;



@Controller
@RequestMapping(value="/goods" ,method= {RequestMethod.GET, RequestMethod.POST})
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

	@RequestMapping("/goodsTopsix")
	public String list2(Model model) {
		command = new GListCommand2();
		command.execute(model);
		return "goods/goodsTopsix";
	}
	
	@RequestMapping("/goodsList")
	public String list(Model model) {
		command = new GListCommand();
		command.execute(model);
		return "goods/goodsList";
	}
	
	@RequestMapping("/goodsClientList")
	public String clientList(Model model) {
		command = new GListCommand();
		command.execute(model);
		return "goods/goodsClientList";
	}
	@RequestMapping("/showgoodspic")
	public String showgoodspic(Model model) {
		command = new GListCommand();
		command.execute(model);
		return "goods/showgoodspic";
	}
	
	@RequestMapping("/goodsClientListCheck")
	public String goodsClientListCheck(Model model) {
		command = new GListCommand();
		command.execute(model);
		return "goods/goodsClientListCheck";
	}
	@RequestMapping("/goodsWrite")
	public String write(Model model) {
		return "goods/goodsWrite";
	}
	
	@PostMapping("/goodsWriteOk")
	public void writeOk(GWriteDTO dto, Model model){
		model.addAttribute("dto", dto);
		new GWriteCommand().execute(model);
//		return "goods/goodsWriteOk";
	}

	//
	//@RequestMapping(value = "/goodsWriteOk",  method= {RequestMethod.GET, RequestMethod.POST})


		
		
		
		
	@RequestMapping("/goodsClientView")
	public String view2(int goodsuid, Model model) {
		model.addAttribute("goodsuid", goodsuid);
		new GViewCommand().execute(model);
		return "goods/goodsClientView";
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













