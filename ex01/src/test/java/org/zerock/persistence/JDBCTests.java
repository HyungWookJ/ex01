package org.zerock.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Test
	public void testConnetction() {
		try(Connection con = DriverManager.getConnection(
				// url 주소
				"jdbc:mysql://localhost:3306/ex01?severTimezone=Asia/Seoul",
				// username
				"root",
				// password
				"1234")) {
			log.info(con);
			
			
		}catch (Exception e) {
			fail(e.getMessage());
		}
	}
}
