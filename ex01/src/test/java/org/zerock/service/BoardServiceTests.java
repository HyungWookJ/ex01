package org.zerock.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardServiceTests {
	public static final Logger logger = LoggerFactory.getLogger(BoardServiceTests.class);
	@Autowired
	private BoardService service;
	
	@Test
	public void testExist() {
		logger.info("" + service);
		assertNotNull(service);
	}
	
	@Test
	public void testRegister() {
	
		BoardVO board = new BoardVO();
		board.setTitle("service로 새로 작성하는 글");
		board.setContent("새로 작성하는 내용");
		board.setWriter("newbie");
		
		service.register(board);
		
		logger.info("생성된 게시물의 번호 : " + board.getBno());
	}
}
