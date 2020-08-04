package com.lec.sterre_test.review.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lec.sterre_test.review.C;
import com.lec.sterre_test.review.beans.ReviewWriteDTO;
import com.lec.sterre_test.review.command.ReviewCommand;
import com.lec.sterre_test.review.command.ReviewDeleteCommand;
import com.lec.sterre_test.review.command.ReviewListCommand;
import com.lec.sterre_test.review.command.ReviewSelectCommand;
import com.lec.sterre_test.review.command.ReviewUpdateCommand;
import com.lec.sterre_test.review.command.ReviewViewCommand;
import com.lec.sterre_test.review.command.ReviewWriteCommand;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	private ReviewCommand command;
	
	// MyReviewabatis
	private SqlSession sqlSession;
	
	public ReviewController() {
		super();
		System.out.println("ReviewController() 생성");
	}
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		C.sqlSession = sqlSession;
	}

	@RequestMapping("/reviewList")
	public String list(Model model) {
		command = new ReviewListCommand();
		command.execute(model);
		return "review/reviewList";
	}
	
	@RequestMapping("/reviewAllList")
	public String alllist(Model model) {
		command = new ReviewListCommand();
		command.execute(model);
		return "review/reviewAllList";
	}
	
	@RequestMapping("/reviewAdminList")
	public String alllist2(Model model) {
		command = new ReviewListCommand();
		command.execute(model);
		return "review/reviewAdminList";
	}
	
	@RequestMapping("/reviewClientList")
	public String clientList(Model model) {
		command = new ReviewListCommand();
		command.execute(model);
		return "review/reviewClientList";
	}
	@RequestMapping("/reviewClientListCheck")
	public String reviewClientListCheck(Model model) {
		command = new ReviewListCommand();
		command.execute(model);
		return "review/reviewClientListCheck";
	}
	@RequestMapping("/reviewWrite")
	public String write(Model model) {
		return "review/reviewWrite";
	}
	
	@PostMapping("/reviewWriteOk")
	public void writeOk(ReviewWriteDTO dto, Model model) {
		model.addAttribute("dto", dto);
		new ReviewWriteCommand().execute(model);
//		return "review/reviewWriteOk";
	}
	
	@RequestMapping("/reviewClientView")
	public String view2(int reviewuid, Model model) {
		model.addAttribute("reviewuid", reviewuid);
		new ReviewViewCommand().execute(model);
		return "review/reviewClientView";
	}
	
	@RequestMapping("/reviewView")
	public String view(int reviewuid, Model model) {
		model.addAttribute("reviewuid", reviewuid);
		new ReviewViewCommand().execute(model);
		return "review/reviewView";
	}
	
	@RequestMapping("/reviewUpdate")
	public void update(int reviewuid, Model model) {
		model.addAttribute("reviewuid", reviewuid);
		new ReviewSelectCommand().execute(model);
//		return "review/update";
	}
	
	@RequestMapping(value = "/reviewUpdateOk", method = RequestMethod.POST)
	public String updateOk(ReviewWriteDTO dto, Model model) {
		model.addAttribute("dto", dto);
		new ReviewUpdateCommand().execute(model);
		return "review/reviewUpdateOk";
	}
	
	@RequestMapping("/reviewDeleteOk")
	public String deleteOk(int reviewuid, Model model) {
		model.addAttribute("reviewuid", reviewuid);
		new ReviewDeleteCommand().execute(model);
		return "review/reviewDeleteOk";
	}
	
}













