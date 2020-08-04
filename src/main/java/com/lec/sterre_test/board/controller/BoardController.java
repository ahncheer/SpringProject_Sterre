package com.lec.sterre_test.board.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lec.sterre_test.board.C;
import com.lec.sterre_test.board.beans.BWriteDTO;
import com.lec.sterre_test.board.command.BCommand;
import com.lec.sterre_test.board.command.BDeleteCommand;
import com.lec.sterre_test.board.command.BListCommand;
import com.lec.sterre_test.board.command.BSelectCommand;
import com.lec.sterre_test.board.command.BUpdateCommand;
import com.lec.sterre_test.board.command.BViewCommand;
import com.lec.sterre_test.board.command.BWriteCommand;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	private BCommand command;
	
	// MyBabatis
	private SqlSession sqlSession;
	
	public BoardController() {
		super();
		System.out.println("BoardController() 생성");
	}
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		C.sqlSession = sqlSession;
	}

	@RequestMapping("/list")
	public String list(Model model) {
		command = new BListCommand();
		command.execute(model);
		return "board/list";
	}
	
	@RequestMapping("/BoardAllList")
	public String list2(Model model) {
		command = new BListCommand();
		command.execute(model);
		return "board/BoardAllList";
	}
	@RequestMapping("/boardList")
	public String list3(Model model) {
		command = new BListCommand();
		command.execute(model);
		return "board/boardList";
	}
	
	@RequestMapping("/write")
	public String write(Model model) {
		return "board/write";
	}
	
	@PostMapping("/writeOk")
	public void writeOk(BWriteDTO dto, Model model) {
		model.addAttribute("dto", dto);
		new BWriteCommand().execute(model);
//		return "board/writeOk";
	}
	
	@RequestMapping("/view")
	public String view(int uid, Model model) {
		model.addAttribute("uid", uid);
		new BViewCommand().execute(model);
		return "board/view";
	}
	
	@RequestMapping("/update")
	public void update(int uid, Model model) {
		model.addAttribute("uid", uid);
		new BSelectCommand().execute(model);
//		return "board/update";
	}
	
	@RequestMapping(value = "/updateOk", method = RequestMethod.POST)
	public String updateOk(BWriteDTO dto, Model model) {
		model.addAttribute("dto", dto);
		new BUpdateCommand().execute(model);
		return "board/updateOk";
	}
	
	@RequestMapping("/deleteOk")
	public String deleteOk(int uid, Model model) {
		model.addAttribute("uid", uid);
		new BDeleteCommand().execute(model);
		return "board/deleteOk";
	}

	
}













