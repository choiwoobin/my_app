<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "com.project.AdminDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String ename = request.getParameter("ename");
	String bast = request.getParameter("check_bast");
	String sholder= request.getParameter("check_sholder");
	String arm= request.getParameter("check_arm");
	String stomach= request.getParameter("check_stomach");
	String 	thigh= request.getParameter("check_thigh");
	String claf= request.getParameter("check_claf");
	String 	back= request.getParameter("check_back");
	String 	hip= request.getParameter("check_hip");
	String text_info = request.getParameter("explain");
	String imgurl = request.getParameter("imgurl");
	String yturl = request.getParameter("yturl");

	AdminDAO dao = new AdminDAO(ename,bast,sholder,arm,stomach,thigh,claf,back,hip,text_info,imgurl,yturl);
	dao.answerEx();
	
	response.sendRedirect("Admin_dolist.jsp");
%>
</body>
</html>