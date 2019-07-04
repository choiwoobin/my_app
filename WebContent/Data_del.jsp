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

<style>
	body{
		background-color : black;
	
	}
	.list {
		border-radius: 80px;
		height : 180px;
		background-color : #474745;
		border : 10px solid gray;
		margin-bottom: 80px;
		
		width :80%;
		margin-left : 10%;
		margin-right : 10%;
	}
	.list div {
		display : inline;
		
		height: 180px;	
		width : 80%;
		line-height: 180px;
		font-weight: bold;
		font-size: 3.0em;
		text-align: center;	
		color: white;
		margin : 0px 0px 0px 8%;
	}
	
	.head {
		
		height : 200px;
		background-color : #474745;
		border : 10px solid gray;
		margin-bottom: 80px;
		line-height: 200px;
		font-weight: bold;
		font-size: 3.5em;
		text-align: center;	
		color: white;
		width :80%;
		margin-left : 10%;
		margin-right : 10%;
	
	}
	.head h1{
		margin : 0px;
	}
	.button{
		height:80px;
		width : 100px;
	 	font-size : 2.3em;
	 	margin-left : 80%;
	 	
	 	position : fixed;
	 	right : 10%; bottom: 5%;
	}
	.check{
		display: inline;
		width : 50px;
		height : 50px;
		margin : 65px 0px 65px 30px;
	}
</style>

</head>
<body>
<%

	response.setCharacterEncoding("UTF-8");
	ArrayList<ExDTO> array_dto;
	AdminDAO2 obj = new AdminDAO2();
	array_dto = obj.answerEx();
%>
<div class ='head'>
	<h1>삭제하기</h1>
</div>
	<form action = 'Data_del_fin.jsp'>
		<%
			
			for(ExDTO exdto : array_dto){
				out.println("<div class='list'>");
				out.println("<input class='check' type='checkbox' name='box' value ='"+exdto.getEname()+"'><div>" +exdto.getEname()+" </div><br>");
				out.println("</div>");
			}
		
		%>
		<input class = 'button' type='submit' value ='Del'>
		
	</form>

</body>
</html>