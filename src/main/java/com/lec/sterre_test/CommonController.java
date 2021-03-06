package com.lec.sterre_test;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CommonController {
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		System.out.println("access Denied : " + auth);
		System.out.println("dudududuudud");
		model.addAttribute("msg", "접근 권한 거부");
	}
	
	
	@GetMapping("/customLogin")
	public void loginInput(String error, String logout, Model model) {
		System.out.println("error: " + error);
		System.out.println("logout: " + logout);
		
		if(error != null) {
			model.addAttribute("error", "Login Error Check Your Account");
		}
		
		if(logout != null) {
			model.addAttribute("logout ", "Logout!!");
		}
		
	}
	
	@GetMapping("/customLogout")
	public void logoutGET() {
		System.out.println("custom logout");
	}
	
	@PostMapping("/customLogout")
	public void logoutPost() {
		System.out.println("post custom logout");
		// ↑ 이것은 안찍힐 것이다(확인!),  
		// 이미 로그아웃 되어 있는 상태에서 /customLogout 이 요청되면
		// 자동으로 로그인 페이지로 이동하도록 동작한다.
	}
	
	
	@GetMapping("/header")
	public void doHeader(String error, String logout, Model model) { // 리턴타입 없으면 url 과 같은 경로의 jsp 파일을 찾는다.--> /sample/all.jsp
			System.out.println("header-error: " + error);
			System.out.println("header-logout: " + logout);
			
		System.out.println("doHeader() : access everybody");
	}
	
	@GetMapping("/footer")
	public void doFooter() {  // 리턴타입 없으면 url 과 같은 경로의 jsp 파일을 찾는다.--> /sample/all.jsp
		System.out.println("doFooter() : access everybody");
	}
	


	
}














