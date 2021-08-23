<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/register.js"></script>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
<h1>글쓰기</h1>
<form role="form" action="register" method="post">
	<table border="1">
		<tr>
			<td>제목</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows="10" cols="30" name="content"></textarea></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="writer"></td>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" value="글쓰기"></th>
		</tr>
	</table>
	<div class='uploadDiv'>
		<input type="file" name="uploadFile" multiple>
	</div>
</form>
<div class="uploadResult">
	<ul>
	</ul>
</div>
</body>
</html>