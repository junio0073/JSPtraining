<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="Utf-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userID = request.getParameter("userID");
		String userPW = request.getParameter("userPW");

		//유저 비밀번호와 아이디 확인
		if (userID.equals("aaaa") && userPW.equals("1234")) {
			//맞으면 세션 생성
			session.setAttribute("userID", userID);
			out.print(userID + "님 로그인!");
		} else {
			//틀리면 틀리다고 함
			out.print("아이디 혹은 비밀번호를 확인해 주십시오.");
			//response.sendRedirect("index.html");
		}
	%>
</body>
</html>