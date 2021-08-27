package org.zerock.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.LoginVO;
import org.zerock.mapper.LoginMapper;

@Service
public class LoginServiceImpl implements LoginService{ // 구현
	public static final Logger logger = LoggerFactory.getLogger(LoginServiceImpl.class);
	@Autowired
	private LoginMapper mapper;
	@Override
	public void sign_in(LoginVO login) {
		// TODO Auto-generated method stub
		logger.info("sign_in....." + login);
	       
		mapper.insertSelectKey(login);
	}
}
