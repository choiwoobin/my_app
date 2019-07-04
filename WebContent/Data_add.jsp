<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
body{
         
         background: #000;
         
         overflow: scroll;
         
      }
       

      #body{
         
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

      #add{
      margin-left: 90%;
      margin-top: 10px;
      width : 12%;      
      height: 60px;
      font-size: 35px;
      }
      .text{
      height: 70px;
      width : 600px;
      font-size : 1.5em;
      margin-top : 10px;
      }
      
      .text2{
      height: 70px;
      width: 500px;
      font-size : 1.2em;
      margin-bottom : 15px;
      }
      
      .explain_head{
      float : left;
      font-weight : bold;
      font-size: 45px;
      margin: 0% 0% 0% 10%;
      }
      
      .att{
         margin-right : 78%;
      }
      
      .check{
         width : 45px;
         height : 45px;
      }
      
      
      </style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <%
   		response.setCharacterEncoding("UTF-8");
   
   %>
   <div name="body" id="body">
   
      <form name = "frm" id="frm">
         ÀÌ¸§<input type='text' name = 'ename' class = 'text'><br>
         <span class='att'>¼Ó¼º</span><br>       
         <span>°¡½¿___</span><input class = 'check' type ="checkbox" name="check_bast" value ="true" >
         <span>¾î±ú___</span><input class = 'check' type ="checkbox" name="check_sholder" value ="true" >
         <span>¹è____</span><input class = 'check' type ="checkbox" name="check_stomach" value ="true" >
         <span>¾ûµ¢ÀÌ_</span><input class = 'check' type ="checkbox" name="check_hip" value ="true" ><br>
         <span>Çã¹÷Áö_</span><input class = 'check' type ="checkbox" name="check_thigh" value ="true" >
         <span>Á¾¾Æ¸®_</span><input class = 'check' type ="checkbox" name="check_claf" value ="true" >
         <span>µî____</span><input class = 'check' type ="checkbox" name="check_back" value ="true" >
         <span>ÆÈ____</span><input class = 'check' type ="checkbox" name="check_arm" value ="true" >
         <br>
         <br>
         <span class='explain_head'>¼³¸í</span>
         
         <textarea id="explain_base" rows ="50" cols ="50" > </textarea><br>
         imgURL____ <input type ="text" name ="imgurl" class='text2'><br>
         youtubeURL <input type ="text" name ="yturl" class='text2'><br>
         
         <div style = "display:none">
            <input id = "explain" type="text" name="explain">
         </div>
         
         <input type='button' value ='Add' onclick='submitGo()' id='add'>
      </form> 
   </div>
</body>
<script>
   function submitGo(){
      
      document.getElementById("explain").value = document.getElementById("explain_base").value;         
      
      document.frm.action = "Data_add_fin.jsp";
      document.frm.submit();      
   }
</script>
</html>