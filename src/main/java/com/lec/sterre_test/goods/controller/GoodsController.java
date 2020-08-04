package com.lec.sterre_test.goods.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;

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
@RequestMapping("/goods" )
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
	
	@RequestMapping("/goodsAllList")
	public String list(Model model) {
		command = new GListCommand();
		command.execute(model);
		return "goods/goodsAllList";
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


	/*
	 @RequestMapping(value="/goodsWriteOk", method = RequestMethod.POST)
	    public String fileUploadTest(@RequestParam("goodspic1") MultipartFile goodspic1, MultipartRequest request, MultipartFile file, GWriteDTO dto, Model model) {

System.out.println("여기까지 들어옴 왁");
//	        String rootUploadDir = "C:"+File.separator+"Upload"; // C:/Upload
	        String rootUploadDir = "C:\\Users\\amu30\\Desktop\\zzzz"; // C:/Upload

     
	        File dir = new File(rootUploadDir + File.separator + "testfile"); 
	        
	        if(!dir.exists()) { //업로드 디렉토리가 존재하지 않으면 생성
	            dir.mkdirs();
	        }
	        
	        Iterator<String> iterator = request.getFileNames(); //업로드된 파일정보 수집(2개 - file1,file2)
	        
	        int fileLoop = 0;
	        String uploadFileName;
	        MultipartFile mFile = null;
	        String orgFileName = ""; //진짜 파일명
	        String sysFileName = ""; //변환된 파일명
	        
	        ArrayList<String> list = new ArrayList<String>();
	        
	        while(iterator.hasNext()) {
	            fileLoop++;
	            
	            uploadFileName = iterator.next();
	            mFile = request.getFile(uploadFileName);
	            
	            orgFileName = mFile.getOriginalFilename();    
	            System.out.println(orgFileName);
	            
	            if(orgFileName != null && orgFileName.length() != 0) { //sysFileName 생성
	                System.out.println("if문 진입");
	                
	                try {
	                    System.out.println("try 진입");
	                    mFile.transferTo(new File(dir + File.separator + sysFileName)); // C:/Upload/testfile/sysFileName
	                    list.add("원본파일명: " + orgFileName + ", 시스템파일명: " + sysFileName);
	                    
	                }catch(Exception e){
	                    list.add("파일 업로드 중 에러발생!!!");
	                }
	            }//if
	        }//while
	        
	        model.addAttribute("dto", dto);
			new GWriteCommand().execute(model);
			
			
			return "goods/goodsWriteOk";
	    }

*/
	
	
	
	
	
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













