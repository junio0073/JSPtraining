<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
 if(session.getAttribute("userID")==null)
 {%>
	로그인 안됨! 
	<form action="index.html" method="post">
		<input type="submit" value="처음 화면으로">
	</form>
<% } else{
%>
<%=session.getAttribute("userID")%>님 로그인!
<form action="logout.jsp" method="post">
 <input type="submit" name="logout" value="로그아웃">
</form>
<% } %>
</body>
</html>