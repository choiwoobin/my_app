<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.project.AdminDAO" %>
<%@ page import ="com.project.ExDTO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style>
body{
	background: #000;
         
         overflow: scroll;
}

 .body{
         
         background-color: #474745;
         text-align: center;         
         margin : 5% 10% 5% 10%;         
         font-size: 2.3em;                  
         border-radius: 80px;
         border:10px solid gray;
         color: #FFF;
         line-height: 60px;
         height : 300px;
         width: 80%;
               
      }
      
      .text{
      height: 70px;
      width : 600px;
      font-size : 1.5em;
      
      margin-top : 10px;
      }
      #explain_base
      {
         background-color: #474745;
         text-align: center;         
            
         font-size: 1.5em;                  
         border-radius: 80px;
         border:10px solid gray;
         color: #FFF;
         line-height: 60px;
         height : 1000px;
         width: 100%;
         margin-bottom : 10px;

      }
      
       .text2{
      height: 70px;
      width: 500px;
      font-size : 1.2em;
      margin-bottom : 15px;
      }
      
      #add{
      margin-left: 90%;
      margin-top: 10px;
      width : 12%;      
      height: 60px;
      font-size: 35px;
      }
       .explain_head{
      float : left;
      font-weight : bold;
      font-size: 45px;
      margin: 8% 0% 0% 10%;
      }
      .check{
         width : 45px;
         height : 45px;
      }
      .att{
         margin-right : 78%;
      }
</style>
</head>
<body>
<%

	request.setCharacterEncoding("UTF-8");
	String s = request.getParameter("exlist");
	AdminDAO dao = new AdminDAO(s);
	
	ExDTO dto = dao.answer_alter();
	
	String t ="true";
	String bast="";
	String sholder="";
	String arm="";
	String stomach="";
	String 	thigh="";
	String claf="";
	String 	back="";
	String 	hip="";
	
	String text = dto.getInfo_text();
	String imgurl = dto.getInfo_imgurl();
	String yturl = dto.getInfo_yturl();
	
	if(t.equals(dto.getBast())){bast = "checked='checked'";}
	if(t.equals(dto.getSholder())){sholder ="checked='checked'";}
	if(t.equals(dto.getArm())){arm = "checked='checked'";}
	if(t.equals(dto.getStomach())){stomach = "checked='checked'";}
	if(t.equals(dto.getThigh())){thigh = "checked='checked'";}
	if(t.equals(dto.getClaf())){claf = "checked='checked'";}
	if(t.equals(dto.getBack())){back = "checked='checked'";}
	if(t.equals(dto.getHip())){hip = "checked='checked'";}
	
	
	


%>
<div class = 'body'>
	<form name = "frm">
		이름  <input class='text' type='text' name = 'ename' readonly value = '<%=dto.getEname()%>'><br>
		<span class='att'>속성</span><br> 		
		
		<span>가슴___</span><input class ='check' type ="checkbox" name="check_bast" value ='true' <%= bast %> >
		<span>어깨___</span><input class ='check' type ="checkbox" name="check_sholder" value ='true' <%= sholder %>>
		<span>배____</span><input class ='check' type ="checkbox" name="check_stomach" value ='true' <%= stomach%> >
		<span>엉덩이_</span><input class ='check' type ="checkbox" name="check_hip" value ='true' <%= hip %>><br>
		<span>허벅지_</span><input class ='check' type ="checkbox" name="check_thigh" value ='true' <%= thigh %> >
		<span>종아리_</span><input class ='check' type ="checkbox" name="check_claf" value ='true' <%= claf %>>
		<span>등____</span><input class ='check' type ="checkbox" name="check_back" value ='true' <%= back %>>
		<span>팔____</span><input class ='check' type ="checkbox" name="check_arm" value ='true' <%= arm %>><br>
		
				
		<span class='explain_head'>설명</span> 
		<textarea id="explain_base" rows ="50" cols ="50" ><%=text%>  </textarea><br>
		imgURL____ <input class='text2' type ="text" name ="imgurl" value=<%=imgurl%> ><br>
		youtubeURL <input class='text2' type ="text" name ="yturl" value=<%= yturl%> ><br>
		
		<div style = "display:none">
			<input id = "explain" type="text" name="explain">
		</div>
				
		<input id='add' type='button' value ='Alter' onclick='submitGo()'>
	</form> 
</div>
</body>
<script>
	function submitGo(){
		
		document.getElementById("explain").value = document.getElementById("explain_base").value;			
		
		document.frm.action = "Data_alter_fin.jsp";
		document.frm.submit();		
	}
</script>
</html>