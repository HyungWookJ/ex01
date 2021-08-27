<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style type="text/css">
	.account{
		margin: 0 auto;
		margin-top: 200px;
		text-align: center;
	}
</style>
</head>
<body>
<form action="sign_in" method="post">
	<table border="1" style="border: none; background-color: #ccc; width: 500px; height: 500px;"  class="account">
		<tr>
			<th colspan="2" style="text-align: center;">회원가입</th>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" style="border-color: blue;"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pw" style="border-color: blue;"></td>
		</tr>
		<tr>
			<td>비밀번호 재확인</td>
			<td><input type="password" name="pwCheck" style="border-color: blue;"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" style="border-color: blue;"></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input type="date" name="birth"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				<input type="radio" name="gender" value="male">남
				<input type="radio" name="gender" value="female">여
			</td>
		</tr>
		<tr>
			<td>휴대전화번호</td>
			<td><input type="tel" name="phone" style="border-color: blue;"></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center;">
				<input type="submit" value="가입하기" style="background-color: aqua; font-weight: bold; color: #555; width: 200px; height: 40px;">
			</td>
		</tr>
	</table>
</form>
</body>
</html>