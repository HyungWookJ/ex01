package org.zerock.service;

import org.zerock.domain.LoginVO;

public interface LoginService { // 설계
	
	// 로그인(sign_in)
	public void sign_in(LoginVO login);
	
}
