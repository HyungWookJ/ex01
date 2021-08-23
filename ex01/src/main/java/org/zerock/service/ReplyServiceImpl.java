package org.zerock.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.ReplyVO;
import org.zerock.mapper.BoardMapper;
import org.zerock.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService{
	private static final Logger logger = LoggerFactory.getLogger(ReplyServiceImpl.class);
	@Autowired
	private ReplyMapper rmapper;
	@Autowired
	private BoardMapper bmapper;
	// 구현 메서드
	@Override
	public ArrayList<ReplyVO> getList(int bno){
		logger.info("get Reply List of a Board" + bno);
		return rmapper.getList(bno);
	}
	@Override
	public int register(ReplyVO vo) {
		logger.info("service register" + vo);
		bmapper.updateReplycnt(vo.getBno(), 1);
		return rmapper.insert(vo);	
	}

	@Override
	public int modify(ReplyVO vo) {
		logger.info("service modify" + vo);
		return rmapper.update(vo);
	}

	@Override
	public int remove(int rno) {
		logger.info("service remove" + rno);
//		bmapper.updateReplycnt(vo.getBno(), 1);
		return rmapper.delete(rno);
	}
}
