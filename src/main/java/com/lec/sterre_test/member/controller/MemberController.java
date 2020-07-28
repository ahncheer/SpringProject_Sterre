package com.lec.sterre_test.member.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
		System.out.println("MemberController() 생성");
	}
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		C.sqlSession = sqlSession;
	}

	@RequestMapping("/memList")
	public String list(Model model) {
		command = new MListCommand();
		command.execute(model);
		return "member/memList";
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

	@RequestMapping("/memView")
	public String view(int useruid, Model model) {
		model.addAttribute("useruid", useruid);
		new MViewCommand().execute(model);
		return "member/memView";
	}
	
	@RequestMapping("/memUpdate")
	public void update(int useruid, Model model) {
		model.addAttribute("useruid", useruid);
		new MSelectCommand().execute(model);
//		return "member/update";
	}
	
	@RequestMapping(value = "/memUpdateOk", method = RequestMethod.POST)
	public String updateOk(MWriteDTO dto, Model model) {
		model.addAttribute("dto", dto);
		new MUpdateCommand().execute(model);
		return "member/memUpdateOk";
	}
	
	@RequestMapping("/memDeleteOk")
	public String deleteOk(int useruid, Model model) {
		model.addAttribute("useruid", useruid);
		new MDeleteCommand().execute(model);
		return "member/memDeleteOk";
	}
	

	@RequestMapping("/myPage")
	public String myPage() {
		System.out.println("myPage");
		return "member/myPage";
	}
	
	@RequestMapping("/adminPage")
	public String adminPage() {
		System.out.println("adminPage");
		return "member/adminPage";
	}
}













