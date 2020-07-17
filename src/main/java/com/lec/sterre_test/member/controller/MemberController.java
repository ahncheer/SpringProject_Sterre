package com.lec.sterre_test.member.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lec.sterre_test.member.C;
import com.lec.sterre_test.member.beans.MWriteDTO;
import com.lec.sterre_test.member.command.MCommand;
import com.lec.sterre_test.member.command.MDeleteCommand;
import com.lec.sterre_test.member.command.MListCommand;
import com.lec.sterre_test.member.command.MSelectCommand;
import com.lec.sterre_test.member.command.MUpdateCommand;
import com.lec.sterre_test.member.command.MViewCommand;
import com.lec.sterre_test.member.command.MWriteCommand;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	private MCommand command;
	
	// MyMabatis
	private SqlSession sqlSession;
	
	public MemberController() {
		super();
		System.out.println("MoardController() 생성");
	}
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		C.sqlSession = sqlSession;
	}

	@RequestMapping("/memlist")
	public String list(Model model) {
		command = new MListCommand();
		command.execute(model);
		return "member/memlist";
	}
	
//	@RequestMapping("/memwrite")
	@RequestMapping("/signUp")
	public String write(Model model) {
		return "member/signUp";
	}
	
//	@PostMapping("/memwriteOk")
	@PostMapping("/signUpOk")
	public void writeOk(MWriteDTO dto, Model model) {
		model.addAttribute("dto", dto);
		new MWriteCommand().execute(model);
//		return "member/memwriteOk";
	}
	
	@RequestMapping("/memview")
	public String view(int useruid, Model model) {
		model.addAttribute("useruid", useruid);
		new MViewCommand().execute(model);
		return "member/memview";
	}
	
	@RequestMapping("/memupdate")
	public void update(int useruid, Model model) {
		model.addAttribute("useruid", useruid);
		new MSelectCommand().execute(model);
//		return "member/update";
	}
	
	@RequestMapping(value = "/memupdateOk", method = RequestMethod.POST)
	public String updateOk(MWriteDTO dto, Model model) {
		model.addAttribute("dto", dto);
		new MUpdateCommand().execute(model);
		return "member/memupdateOk";
	}
	
	@RequestMapping("/memdeleteOk")
	public String deleteOk(int useruid, Model model) {
		model.addAttribute("useruid", useruid);
		new MDeleteCommand().execute(model);
		return "member/memdeleteOk";
	}
	
	
	
}













