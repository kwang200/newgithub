<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>로그인</h1>
<hr>
<form action="loginPro.jsp" method="post">
아이디:<input type="text" name="id"><br>
패스워드:<input type="password" name="passwd"><br>
<br>
<input type="submit" name="login" value="로그인">
<input type="button" name="join" value="회원가입" onclick="location.href='joinform.jsp'">

</form>

</body>
</html>