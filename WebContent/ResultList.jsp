<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "com.project.ExDTO" %>
<%@ page import = "com.project.ExDAO1 "%>


<!DOCTYPE html>


<html>
<head>
	<title>Result List</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<style>

		body{
			background-color:  #000;
		}

		#result{
			width: 100%;
			height: 100%;
			overflow: scroll;
		}
		
		#back{
			background-size: 150px;			
			width: 150px;
			height:150px; 
			float: left;
			margin-left: 0px;
			position: fixed;
			left: 10%; bottom: 5%;
			background-repeat: no-repeat;		
		}

		#result #button{
			height: 250px;	
			width : 80%;
			border-radius: 80px;
			line-height: 80px;
			font-weight: bold;
			font-size: 3.0em;
			text-align: center;	
			
			
			margin : 40px 10%;
		}
		a:link{ 
			text-decoration: none ;
			color: #FFF;
		};
		div a:link{
			text-decoration: none ;
			color : #FFF;
		}

	</style>
</head>
<body>
	<div id="result">
	
		<%	
			response.setCharacterEncoding("UTF-8");
			
			
			
			String bast = (String)session.getAttribute("bast");
			String sholder= (String)session.getAttribute("sholder");
			String arm= (String)session.getAttribute("arm");
			String stomach= (String)session.getAttribute("stomach");
			String 	thigh= (String)session.getAttribute("thigh");
			String claf= (String)session.getAttribute("claf");
			String 	back= (String)session.getAttribute("back");
			String 	hip= (String)session.getAttribute("hip");
			/*
			String bast = request.getParameter("check_bast");
			String sholder= request.getParameter("check_sholder");
			String arm= request.getParameter("check_arm");
			String stomach= request.getParameter("check_stomach");
			String 	thigh= request.getParameter("check_thigh");
			String claf= request.getParameter("check_claf");
			String 	back= request.getParameter("check_back");
			String 	hip= request.getParameter("check_hip");
			*/
			ExDAO1 exdao = new ExDAO1(bast,sholder,arm,stomach,thigh,claf,back,hip);
			ArrayList<ExDTO> array_obj = exdao.answerEx();
			
			int n=0;
			out.println("<form name = 'frm' >");
			out.println("<div style = display:none>");
			out.println("<input id = 'ename' type='text' name= 'exlist'>");
			out.println("</div>");
			for(ExDTO obj : array_obj)
			{
				n++;
				out.println("<input id='button' type='button' name = 'button_"+n+"'  value ='" + obj.getEname()+"' onclick = 'submitGo(this)'><br>");
				//style='width:70%;height:100px'
			}
			out.println("</form>");
		%>
	
	</div>
	<a href="Show me.jsp">
		<div id="back" style="background-image: url('images/BACK.PNG')"></div>	
	</a>
	
	
	
	<script>
		
		function submitGo(button){
			
			document.getElementById("ename").value = button.value;			
			
			document.frm.action = "Exercise.jsp";
			document.frm.submit();		
		}
	
	</script>
	
	

	

</body>


</html>




				
