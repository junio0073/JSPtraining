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
			//맞으면 세션 생성 - 입력한 아이디를 세션 객체에 저장한다.
			session.setAttribute("userID", userID);
			//세션 유지 시간 = 1시간
			session.setMaxInactiveInterval(60*60) ;
			//로그인 했으면 로그인 OK화면으로!
			response.sendRedirect("loginOK.jsp");
		} else {
			//틀리면 틀리다고 함
			out.print("아이디 혹은 비밀번호를 확인해 주십시오.");
			//response.sendRedirect("index.html");
		}
	%>
</body>
</html>