<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1>회원가입 페이지</h1>
<hr>
<form action="joinPro.jsp" method="post">
아이디 : <input type="text" name="id"><br>
패스워드: <input type="password" name="passwd"><br>
이름 :<input type="text" name="name"><br>
나이 :<input type="text" name="age"><br>
성별 :<input type="radio" name="gender" value="남">남자
<input type="radio" name="gender" value="여자">여자 <br>
이메일 : <input type="email" name="email"><br><br>
<input type="submit" value="회원가입">
<input type="button" value="로그인 화면으로 이동 " onclick="location.href='loginForm.jsp'">
</form>
</div>



</body>
</html>