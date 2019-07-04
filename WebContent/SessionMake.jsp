<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.setAttribute("bast",request.getParameter("check_bast"));
	session.setAttribute("sholder",request.getParameter("check_sholder"));
	session.setAttribute("arm",request.getParameter("check_arm"));
	session.setAttribute("stomach",request.getParameter("check_stomach"));
	session.setAttribute("thigh",request.getParameter("check_thigh"));
	session.setAttribute("claf",request.getParameter("check_claf"));
	session.setAttribute("back",request.getParameter("check_back"));
	session.setAttribute("hip",request.getParameter("check_hip"));
	
	response.sendRedirect("ResultList.jsp");
%>