package org.zerock.mapper;

import java.util.ArrayList;

import org.zerock.domain.ReplyVO;

public interface ReplyMapper {
	//댓글 쓰기
	public int insert(ReplyVO vo);
	//댓글목록리스트
	public ArrayList<ReplyVO> getList(int bno);
	//댓글수정
	public int update(ReplyVO vo);
	//댓글삭제
	public int delete(int rno);
}
