<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.project.AdminDAO2" %>
<%@ page import ="com.project.ExDTO" %>
<%@ page import = "java.util.ArrayList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>

	body{
		background-color : black;
	
	}
	.head{
	
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
	.list{
		border-radius: 80px;
		height : 180px;
		background-color : #474745;
		border : 10px solid gray;
		margin-bottom: 80px;
		
		width :80%;
		margin-left : 10%;
		margin-right : 10%;
		line-height: 180px;
		font-weight: bold;
		font-size: 3.0em;
		text-align: center;	
		color: white;
	}
</style>
</head>
<body>
<%
	ArrayList<ExDTO> array_dto;
	AdminDAO2 obj = new AdminDAO2();
	array_dto = obj.answerEx();
%>
<div class = 'head'>
	<h1>수정하기</h1>
</div>
	
		<%
			response.setCharacterEncoding("UTF-8");
			int n=0;
			out.println("<form name = 'frm' >");
			out.println("<div style = display:none>");
			out.println("<input id = 'ename' type='text' name= 'exlist'>");
			out.println("</div>");
			for(ExDTO exdto : array_dto){
				n++;
				out.println("<input class='list' type='button' name='button"+n+"' value ='"+exdto.getEname()+"'onclick = 'submitGo(this)'><br>");
			}
			out.println("</form>");
		
		%>
		
		
	

</body>
<script>
		
		function submitGo(button){
			
			document.getElementById("ename").value = button.value;			
			
			document.frm.action = 'Data_alter_work.jsp';
			document.frm.submit();		
		}
	
</script>
</html>