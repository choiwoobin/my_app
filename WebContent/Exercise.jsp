<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "com.project.ExDAO2 "%>
<%@ page import = "com.project.ExDTO "%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>exercise</title>
	<link rel="stylesheet" type="text/css" href="exerciseStyle.css">
	<style>
	</style>
</head>
<body>
	<% 
		request.setCharacterEncoding("UTF-8");
		String s= request.getParameter("exlist");
		
		
		ExDAO2 obj = new ExDAO2(s);
		ArrayList<ExDTO> array_exdto = obj.answerEx();
		String text = array_exdto.get(0).getInfo_text();
		String imgurl = array_exdto.get(0).getInfo_imgurl();
		String yturl = array_exdto.get(0).getInfo_yturl();
		
		System.out.println(text);
		System.out.println(imgurl);
		System.out.println(yturl);
	%>
	<div id="title">
		<h1> <%= s %> </h1>
		
	</div>
	
	<div id="memory">
		<h1> 설명 :</h1>
		<p> 
			<%= text %>
		</p>
		<%
			if(yturl != null)
			{
				out.println("<h1> 영상  : </h1><br>");
				out.println("<iframe width='750' height='500' src='https://www.youtube.com/embed/"+yturl+"'frameborder='0' allowfullscreen='' ></iframe> ");
			}
		
			if(imgurl != null){
				out.println("<h1> 이미지  : </h1><br>");
				out.println("<img src='" + imgurl + "'width='750'><br>");
				 
			}
		%>
		
		 

	</div>
	
	<div class="icon">
		<a href="ResultList.jsp">
			<div id="back" style="background-image: url('images/BACK.PNG')"></div>
		</a>	
	</div>
	<div class="icon">
		<a href="Show me.jsp">
			<div id="home" style="background-image: url('images/HOME.PNG')"></div>
		</a>		
	</div>
</body>
</html>