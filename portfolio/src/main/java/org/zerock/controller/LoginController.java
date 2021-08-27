package org.zerock.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


// log4j 사용없이 적용
@Controller
@RequestMapping(value="login")
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	// 로그인 화면(main)
	@GetMapping("sign_in") 
	public void sign_in_main() {
		logger.info("sign_in");
		
	}
	// 로그인 화면
	@PostMapping("sign_in") 
	public void sign_in() {
		logger.info("sign_in");
		
	}
	
	// 회원가입 화면(main)
	@GetMapping("sign_up") 
	public void sign_up_main() {
		logger.info("sign_up");
		
	}
	
	// 회원가입 화면
	@PostMapping("sign_up") 
	public void sign_up() {
		logger.info("sign_up");
		
	}
	
}