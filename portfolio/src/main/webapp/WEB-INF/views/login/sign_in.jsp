<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
	.login{
		margin: 0 auto;
		margin-top: 200px;
		width: 500px;
		height: 500px;
	}
</style>
</head>
<body>
<form method="post">
	<table border="1" style="border: none; background-color: #ccc;" class="login">
		<tr>
			<th colspan="2">로그인</th>
		</tr>
		<tr>
			<td style="text-align: center;">아이디</td>
			<td><input type="text" name="idLog"></td>
		</tr>
		<tr>
			<td style="text-align: center;">비밀번호</td>
			<td><input type="password" name="pwLog"></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center;">
				<input type="submit" formaction="/" value="로그인"  style="background-color: aqua; font-weight: bold; color: #555; width: 200px; height: 30px">
				<input type="submit" formaction="sign_up" value="회원가입"  style="background-color: aqua; font-weight: bold; color: #555; width: 200px; height: 30px">
			</td>
		</tr>
	</table>
</form>
</body>
</html>