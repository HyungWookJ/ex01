package org.zerock.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BoardAttachVO;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardAttachMapper;
import org.zerock.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService{ // 구현
	public static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);
	@Autowired
	private BoardMapper mapper;
	
	@Autowired
	private BoardAttachMapper attachMapper;
	
	public void register(BoardVO board) {
		logger.info("register....." + board);
		       
		mapper.insertSelectKey(board);
		
		if(board.getAttachList() == null || board.getAttachList().size()<=0) {
			return;
		}
		board.getAttachList().forEach(attach->{
			attach.setBno(board.getBno());
			attachMapper.insert(attach);
		});
	}

	public BoardVO get(int bno) {
		return mapper.read(bno); // BoardMapper에서 가져옴
	}
	
	public boolean modify(BoardVO board) {
		
		return mapper.update(board);
	}
	
	public boolean remove(int bno) {
		
		return mapper.delete(bno);
	}
	
	public ArrayList<BoardVO> getList() {
		
		return mapper.getList(); // select된 결과가 getList()에 저장되므로 리턴으로 줘야한다.
	}
	
	public ArrayList<BoardVO> getListWithPaging(Criteria cri){
		
		return mapper.getListWithPaging(cri);
	}
	
	public int getTotalCount(Criteria cri) {
		return mapper.getTotalCount(cri);
	}

	public ArrayList<BoardAttachVO> getAttachList(int bno) {
		logger.info("getAttachList...." + bno);
		return attachMapper.findByBno(bno);
	}
}
