package com.lec.sterre_test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/intro/*")
public class IntroController {
	
	//@RequestMapping(value = "/all", method=RequestMethod.GET) 의 축약형	
	@GetMapping("aboutSterre")
	public void doAll() {  // 리턴타입 없으면 url 과 같은 경로의 jsp 파일을 찾는다.--> /sample/all.jspl 
		System.out.println("doAboutSterre() : access everybody");
	}

	@GetMapping("/bestFaq")
	public void doBestFaq() {
		System.out.println("doBestFaq() : access member only");
	}
	
	@GetMapping("/wayToCome")
	public void doWayToCome() {
		System.out.println("doWayToCome() : access admin only");
	}
	
	@GetMapping("/index")
	public void doIndex() {
		System.out.println("doIndex() : access admin only");
	}
	
}
















