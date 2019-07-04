<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	
	body{
		background-color : black;
	}
	
	div div{
		border-radius: 80px;
		height : 250px;
		background-color : #474745;
		border : 10px solid gray;
		margin-bottom: 80px;

	}
	div h1{
		margin : 0px;
	}
	div div a:link{ 
			text-decoration: none ;
			height: 250px;	
			width : 80%;
			line-height: 250px;
			font-weight: bold;
			font-size: 3.0em;
			text-align: center;	
			color: white;
			
	}
	
	body a{
		text-decoration: none ;
		color : white;	
	}
	
	h1{
		margin-top : 400px;
		margin-left: 80%;
	}
	
	
</style>
</head>
<body>
	<%
		String temp = (String)session.getAttribute("id");
		if(temp == null)
		{
			response.sendRedirect("Admin.html");
		}
	%>

	<div>
		<div><a href = 'Data_add.jsp'><h1>데이터 추가</h1></a></div>
		<div><a href = 'Data_del.jsp'><h1>데이터 삭제</h1></a></div>
		<div><a href = 'Data_alter.jsp'><h1>데이터 수정</h1></a></div>
	</div>
	
	
	<a href = 'Admin_out.jsp'><h1>로그아웃</h1></a>
</body>
</html>