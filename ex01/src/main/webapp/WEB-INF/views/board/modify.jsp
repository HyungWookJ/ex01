<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정페이지</title>
</head>
<body>
<form action="modify.jsp" method="post">
	<table border="1">
		<tr>
			<th colspan="2">수정 내용 입력</th>
		</tr>
		<tr>
			<td>글번호</td>
			<td>${board.bno}<input type="hidden" name="no" value="${board.bno}"></td> <!-- 값을 보내는 부분은 히든으로 숨김 -->
		<tr>
			<td>제목</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows="10" cols="50" name="content" placeholder="내용을 입력하세요."></textarea></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${board.writer}<input type="hidden" name="writer" value="${board.writer}"></td>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" value="글수정"></th>
		</tr>
	</table>
</form>
</body>
</html>