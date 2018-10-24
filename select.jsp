<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.Connection" %>
    <%@page import="java.sql.PreparedStatement" %>
    <%@page import="java.sql.DriverManager" %>
      <%@page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원목록조회</h1>
<hr>
<table border="1">
 <tr>
 <th>아이디</th><th>패스워드</th><th>이름</th><th>나이</th><th>성별</th><th>이메일</th><th>가입날짜</th>
 </tr>
<%
//DB연결정보
String url="jdbc:mysql://localhost/register?serverTimezone=UTC";
String user="root1";
String pwd="1234";

Connection con=null;
PreparedStatement pstmt=null;
String sql="";
ResultSet rs=null;

Class.forName("com.mysql.cj.jdbc.Driver");

con= DriverManager.getConnection(url,user,pwd);

sql="SELECT * FROM register";
pstmt=con.prepareStatement(sql);

rs=pstmt.executeQuery();

while(rs.next()){
	
	%>
	<tr>
	<td><%=rs.getString("id") %></td>
	<td><%=rs.getString("passwd") %></td>
	<td><%=rs.getString("name") %></td>
    <td><%=rs.getInt("age") %></td>
	<td><%=rs.getString("gender") %></td>
	<td><%=rs.getString("email") %></td>			
	<td><%=rs.getString("reg_date") %></td>
    </tr>
    <%	
}
rs.close();
pstmt.close();
con.close();


%>
</body>
</html>