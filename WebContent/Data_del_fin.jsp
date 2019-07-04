<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="com.project.AdminDAO2" %>
<%@ page import ="com.project.ExDTO" %>
<%@ page import = "java.util.ArrayList" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		AdminDAO2 obj = new AdminDAO2(request.getParameterValues("box"));
		obj.answerEx_del();
		
		response.sendRedirect("Admin_dolist.jsp");
	
	%>
</body>
</html>