package com.lec.sterre_test.buy.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lec.sterre_test.buy.C;
import com.lec.sterre_test.buy.beans.BuyWriteDTO;
import com.lec.sterre_test.buy.command.BuyCommand;
import com.lec.sterre_test.buy.command.BuyDeleteCommand;
import com.lec.sterre_test.buy.command.BuyListCommand;
import com.lec.sterre_test.buy.command.BuySelectCommand;
import com.lec.sterre_test.buy.command.BuyUpdateCommand;
import com.lec.sterre_test.buy.command.BuyViewCommand;
import com.lec.sterre_test.buy.command.BuyWriteCommand;

@Controller
@RequestMapping("/buy")
public class BuyController {
	
	private BuyCommand command;
	
	// MyBuyabatis
	private SqlSession sqlSession;
	
	public BuyController() {
		super();
		System.out.println("BuyController() 생성");
	}
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		C.sqlSession = sqlSession;
	}

	@RequestMapping("/buyList")
	public String list(Model model) {
		command = new BuyListCommand();
		command.execute(model);
		return "buy/buyList";
	}
	
	@RequestMapping("/buyClientList")
	public String clientList(Model model) {
		command = new BuyListCommand();
		command.execute(model);
		return "buy/buyClientList";
	}
	@RequestMapping("/buyClientListCheck")
	public String buyClientListCheck(Model model) {
		command = new BuyListCommand();
		command.execute(model);
		return "buy/buyClientListCheck";
	}
	@RequestMapping("/buyWrite")
	public String write(Model model) {
		return "buy/buyWrite";
	}
	
	@PostMapping("/buyWriteOk")
	public void writeOk(BuyWriteDTO dto, Model model) {
		model.addAttribute("dto", dto);
		new BuyWriteCommand().execute(model);
//		return "buy/buyWriteOk";
	}
	
	@RequestMapping("/buyClientView")
	public String view2(int buyuid, Model model) {
		model.addAttribute("buyuid", buyuid);
		new BuyViewCommand().execute(model);
		return "buy/buyClientView";
	}
	
	@RequestMapping("/buyView")
	public String view(int buyuid, Model model) {
		model.addAttribute("buyuid", buyuid);
		new BuyViewCommand().execute(model);
		return "buy/buyView";
	}
	
	@RequestMapping("/buyUpdate")
	public void update(int buyuid, Model model) {
		model.addAttribute("buyuid", buyuid);
		new BuySelectCommand().execute(model);
//		return "buy/update";
	}
	
	@RequestMapping(value = "/buyUpdateOk", method = RequestMethod.POST)
	public String updateOk(BuyWriteDTO dto, Model model) {
		model.addAttribute("dto", dto);
		new BuyUpdateCommand().execute(model);
		return "buy/buyUpdateOk";
	}
	
	@RequestMapping("/buyDeleteOk")
	public String deleteOk(int buyuid, Model model) {
		model.addAttribute("buyuid", buyuid);
		new BuyDeleteCommand().execute(model);
		return "buy/buyDeleteOk";
	}
	
}













