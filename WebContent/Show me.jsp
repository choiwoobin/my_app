<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Show me the 운동</title>
	<meta http-equiv="Content-Type" content="text/html; charset="UTF-8" />
	<link rel="Stylesheet" href= "Style.css"/>
	<style>



		*{
			margin: 0px;
		}

		.guide{
			height: 5%;
			width: 980px;
			line-height: 81.74px;
			color: #FFF;
			font-size: 1.6em;
			font-weight: bold;
			text-align: center;
			background-color: #474745; 
			border-radius: 40px;
			margin: 0px 0px 50px 0px;
			border-bottom: 10px solid Gray;

			z-index: 10;
		}
			
		#menu{
			width: 100%;
			height: 12%;
			position: relative;
		}

		#warp{
			background-size: 150px;			
			width: 140px;
			height:140px; 
			float: right;
			margin-right: 0px;
			position: fixed;
			right: 10%; bottom: 5%;
			background-repeat: no-repeat;		

			z-index: 20;
		}
		#arrow{
			background-size: 160px;
			background-repeat: no-repeat;
			width: 160px;
			height:160px; 
			float: left;
			margin-left: 0px;
			position: fixed;
			right: 10%; bottom: 15%;	

			z-index: 20;	
			
		}
		
		


		/* 보니깐 z 인덱스 스타일에 안넣고 스크릡트에 넣어도될거같은데?*/

		/* 뒷모습*/
		



	</style>


</head>
<body>
	
	<div id="section">
		<div class = "guide">
			<h1> 운동을 원하는 신체를 선택해주세요!</h1>
		

		</div>
		<div id="Fullbody">
			<div id = "head"  style="background-image: url('images/Front/FrontBody_01.png')"></div>
			<div id = "lsholder" onclick = "changeSholderZ()" style="background-image: url('images/Front/FrontBody_02.png')"></div>
			<div id = "bast" onclick = "changeBastZ()" style="background-image: url('images/Front/FrontBody_03.png')"></div>
			<div id = "rsholder" onclick = "changeSholderZ()" style="background-image: url('images/Front/FrontBody_04.png')"></div>
			<div id ="larm" onclick = "changeArmZ()" style="background-image: url('images/Front/FrontBody_05.png')"></div>
			<div id = "stomach" onclick = "changeStomachZ()" style="background-image: url('images/Front/FrontBody_06.png')"></div>
			<div id = "rarm" onclick = "changeArmZ()" style="background-image: url('images/Front/FrontBody_09.png')"></div>
			<div id = "thigh" onclick = "changeThighZ()" style="background-image: url('images/Front/FrontBody_10.png')"></div>
			<div id = "claf" onclick = "changeClafZ()" style="background-image: url('images/Front/FrontBody_11.png')"></div>



			<div id = "Slsholder" onclick = "changeSholderZ()" style="background-image: url('images/FSelect/select01.png')"></div>
			<div id = "Srsholder" onclick = "changeSholderZ()" style="background-image: url('images/FSelect/select02.png')"></div>
			<div id = "Sbast" onclick = "changeBastZ()" style="background-image: url('images/FSelect/select03.png')"></div>
			<div id = "Slarm" onclick = "changeArmZ()" style="background-image: url('images/FSelect/select04.png')"></div>
			<div id = "Srarm" onclick = "changeArmZ()" style="background-image: url('images/FSelect/select05.png')"></div>
			<div id = "Sstomach" onclick = "changeStomachZ()" style="background-image: url('images/FSelect/select06.png')">	</div>
			<div id = "Sthigh" onclick = "changeThighZ()" style="background-image: url('images/FSelect/select07.png')">	</div>
			<div id = "Sclaf" onclick = "changeClafZ()" style="background-image: url('images/FSelect/select08.png')"></div>

			<div id = "Bhead" style="background-image: url('images/Behind/BehindBody_01.jpg')"> </div>
			<div id = "Blsholder" onclick = "changeSholderZ()" style="background-image: url('images/Behind/BehindBody_02.jpg')"> </div>
			<div id = "Back" onclick = "changeBackZ()" style="background-image: url('images/Behind/BehindBody_03.jpg')"></div>
			<div id = "Brsholder" onclick = "changeSholderZ()" style="background-image: url('images/Behind/BehindBody_04.jpg')"></div>
			<div id = "Blarm" onclick = "changeArmZ()" style="background-image: url('images/Behind/BehindBody_05.jpg')"></div>
			<div id = "Brarm" onclick = "changeArmZ()" style="background-image: url('images/Behind/BehindBody_06.jpg')"></div>
			<div id = "Hip" onclick = " changeHipZ()" style="background-image: url('images/Behind/BehindBody_07.jpg')"></div>
			<div id = "Bthigh" onclick = "changeThighZ()" style="background-image: url('images/Behind/BehindBody_08.png')"></div>
			<div id = "Bclaf" onclick = "changeClafZ()" style="background-image: url('images/Behind/BehindBody_09.jpg')"></div>

			
			<div id = "SBlsholder" onclick = "changeSholderZ()" style="background-image: url('images/BSelect/BehindSelect_02.jpg')"></div>
			<div id = "SBack" onclick = "changeBackZ()" style="background-image: url('images/BSelect/BehindSelect_03.jpg')"></div>
			<div id = "SBrsholder" onclick = "changeSholderZ()" style="background-image: url('images/BSelect/BehindSelect_04.jpg')"></div>
			<div id = "SBlarm" onclick = "changeArmZ()" style="background-image: url('images/BSelect/BehindSelect_05.jpg')"></div>
			<div id = "SBrarm" onclick = "changeArmZ()" style="background-image: url('images/BSelect/BehindSelect_06.jpg')"></div>
			<div id = "SHip" onclick = "changeHipZ()" style="background-image: url('images/BSelect/BehindSelect_07.jpg')"></div>
			<div id = "SBthigh" onclick = "changeThighZ()" style="background-image: url('images/BSelect/BehindSelect_08.png')"></div>
			<div id = "SBclaf" onclick = "changeClafZ()" style="background-image: url('images/BSelect/BehindSelect_09.jpg')"></div>
			
			
			
			
		</div>



		<div id="menu">
			<img src="images/arrow.png" id='arrow' onclick="Turn()" width="30%" height="10%" >  
		
			<form name="body_check"  >
				<div style = "display:none">
					<input type ="checkbox" name="check_bast" value ="true" >
					<input type ="checkbox" name="check_sholder" value ="true" >
					<input type ="checkbox" name="check_arm" value ="true" >
					<input type ="checkbox" name="check_stomach" value ="true" >
					<input type ="checkbox" name="check_thigh" value ="true" >
					<input type ="checkbox" name="check_claf" value ="true" >
					<input type ="checkbox" name="check_back" value ="true" >
					<input type ="checkbox" name="check_hip" value ="true" >
					
				</div>
				<input type = "button" id="warp" style="background-image: url('images/GO.JPG')" onclick="submitGo()">  </div>	
			</form>
			
			
			<a href="Admin.html">
				<h1 style="color:white; text-decoration: none ;" >Admin</h1>
			</a>
			
				
			
		</div>
	</div>


</body>

	<script>
		
		function submitGo(){
			body_check.action = "SessionMake.jsp";
			body_check.submit();		
			
			
		}
	
		head.style.zIndex=10;
		lsholder.style.zIndex=10;
		bast.style.zIndex=10;
		rsholder.style.zIndex=10;
		larm.style.zIndex=10;
		stomach.style.zIndex=10;
		rarm.style.zIndex=10;
		thigh.style.zIndex=10;
		claf.style.zIndex=10;


		Slsholder.style.zIndex=8;
		Sbast.style.zIndex=8;
		Srsholder.style.zIndex=8;
		Slarm.style.zIndex=8;
		Sstomach.style.zIndex=8;
		Srarm.style.zIndex=8;
		Sthigh.style.zIndex=8;
		Sclaf.style.zIndex=8;

		Bhead.style.zIndex = 6;
		Blsholder.style.zIndex= 6;
		Back.style.zIndex=6;
		Brsholder.style.zIndex=6;
		Blarm.style.zIndex=6;
		Brarm.style.zIndex=6;
		Hip.style.zIndex=6;
		Bthigh.style.zIndex=6;
		Bclaf.style.zIndex=6;


		SBlsholder.style.zIndex= 4;
		SBack.style.zIndex=4;
		SBrsholder.style.zIndex=4;
		SBlarm.style.zIndex=4;
		SBrarm.style.zIndex=4;
		SHip.style.zIndex=4;
		SBthigh.style.zIndex=4;
		SBclaf.style.zIndex=4;


		if(sessionStorage.getItem("turn")=='true')
		{
			Bhead.style.zIndex = parseInt(Bhead.style.zIndex)+10;
			Blsholder.style.zIndex= parseInt(Blsholder.style.zIndex)+10;
			Back.style.zIndex=parseInt(Back.style.zIndex)+10;
			Brsholder.style.zIndex=parseInt(Brsholder.style.zIndex)+10;
			Blarm.style.zIndex=parseInt(Blarm.style.zIndex)+10;
			Brarm.style.zIndex=parseInt(Brarm.style.zIndex)+10;
			Hip.style.zIndex=parseInt(Hip.style.zIndex)+10;
			Bthigh.style.zIndex=parseInt(Bthigh.style.zIndex)+10;
			Bclaf.style.zIndex=parseInt(Bclaf.style.zIndex)+10;


			SBlsholder.style.zIndex= parseInt(SBlsholder.style.zIndex)+10;
			SBack.style.zIndex=parseInt(SBack.style.zIndex)+10;
			SBrsholder.style.zIndex=parseInt(SBrsholder.style.zIndex)+10;
			SBlarm.style.zIndex=parseInt(SBlarm.style.zIndex)+10;
			SBrarm.style.zIndex=parseInt(SBrarm.style.zIndex)+10;
			SHip.style.zIndex=parseInt(SHip.style.zIndex)+10;
			SBthigh.style.zIndex=parseInt(SBthigh.style.zIndex)+10;
			SBclaf.style.zIndex=parseInt(SBclaf.style.zIndex)+10;

		}



		if(sessionStorage.getItem("sholder")=='true')
		{
			
			lsholder.style.zIndex =parseInt(lsholder.style.zIndex)- 2;
			Slsholder.style.zIndex =parseInt(Slsholder.style.zIndex)+ 2;
			rsholder.style.zIndex =parseInt(rsholder.style.zIndex)- 2;
			Srsholder.style.zIndex =parseInt(Srsholder.style.zIndex)+ 2;

			Blsholder.style.zIndex = parseInt(Blsholder.style.zIndex) -2;
			SBlsholder.style.zIndex = parseInt(SBlsholder.style.zIndex)+2;
			Brsholder.style.zIndex = parseInt(Brsholder.style.zIndex)-2;
			SBrsholder.style.zIndex=parseInt(SBrsholder.style.zIndex)+2;
			document.body_check.check_sholder.checked = true;

		}
		if(sessionStorage.getItem("bast")=='true')		
		{
			bast.style.zIndex =parseInt(bast.style.zIndex)- 2;
			Sbast.style.zIndex =parseInt(Sbast.style.zIndex)+ 2;
			document.body_check.check_bast.checked = true;
		}
		if(sessionStorage.getItem("stomach")=='true')
		{
			stomach.style.zIndex =parseInt(stomach.style.zIndex)- 2;
			Sstomach.style.zIndex =parseInt(Sstomach.style.zIndex)+ 2;
			document.body_check.check_stomach.checked = true;
		}
		if(sessionStorage.getItem("arm")=='true')
		{
			larm.style.zIndex = parseInt(larm.style.zIndex)- 2;
			rarm.style.zIndex =parseInt(rarm.style.zIndex)- 2;
			Slarm.style.zIndex =parseInt(Slarm.style.zIndex)+ 2;
			Srarm.style.zIndex = parseInt(Srarm.style.zIndex)+ 2;

			Blarm.style.zIndex = parseInt(Blarm.style.zIndex)-2;
			Brarm.style.zIndex= parseInt(Brarm.style.zIndex)-2;
			SBlarm.style.zIndex = parseInt(SBlarm.style.zIndex)+2;
			SBrarm.style.zIndex= parseInt(SBrarm.style.zIndex)+2;
			document.body_check.check_arm.checked = true;

		}
		if(sessionStorage.getItem("thigh")=='true')
		{
			thigh.style.zIndex =parseInt(thigh.style.zIndex)- 2;
			Sthigh.style.zIndex =parseInt(Sthigh.style.zIndex)+ 2;

			Bthigh.style.zIndex =parseInt(Bthigh.style.zIndex)- 2;
			SBthigh.style.zIndex =parseInt(SBthigh.style.zIndex)+ 2;
			document.body_check.check_thigh.checked = true;
		}
		if(sessionStorage.getItem("claf")=='true')
		{
			claf.style.zIndex =parseInt(claf.style.zIndex)- 2;
			Sclaf.style.zIndex =parseInt(Sclaf.style.zIndex)+ 2;

			Bclaf.style.zIndex =parseInt(Bclaf.style.zIndex)- 2;
			SBclaf.style.zIndex = parseInt(SBclaf.style.zIndex)+ 2;
			document.body_check.check_claf.checked = true;
		}
		if(sessionStorage.getItem("back")=='true')
		{
			Back.style.zIndex = parseInt(Back.style.zIndex)-2;
			SBack.style.zIndex = parseInt(SBack.style.zIndex)+2;
			document.body_check.check_back.checked = true;
		}
		if(sessionStorage.getItem("hip")=='true')
		{
			Hip.style.zIndex = parseInt(Hip.style.zIndex)-2;
			SHip.style.zIndex = parseInt(SHip.style.zIndex)+2;
			document.body_check.check_hip.checked = true;
		}


/* ------------------------------------------------------------------------------*/

		
		function changeSholderZ()
		{
			if(lsholder.style.zIndex==10 || rsholder.style.zIndex==10)
			{
				
				lsholder.style.zIndex =parseInt(lsholder.style.zIndex)- 2;
				Slsholder.style.zIndex =parseInt(Slsholder.style.zIndex)+ 2;
				rsholder.style.zIndex =parseInt(rsholder.style.zIndex)- 2;
				Srsholder.style.zIndex =parseInt(Srsholder.style.zIndex)+ 2;

				Blsholder.style.zIndex =parseInt(Blsholder.style.zIndex)- 2;
				SBlsholder.style.zIndex =parseInt(SBlsholder.style.zIndex)+ 2;
				Brsholder.style.zIndex =parseInt(Brsholder.style.zIndex)- 2;
				SBrsholder.style.zIndex =parseInt(SBrsholder.style.zIndex)+ 2;

				sessionStorage.setItem("sholder","true");
				document.body_check.check_sholder.checked = true;
			

			}
			else 
			{
				
				lsholder.style.zIndex =parseInt(lsholder.style.zIndex)+ 2;
				Slsholder.style.zIndex =parseInt(Slsholder.style.zIndex)- 2;
				rsholder.style.zIndex =parseInt(rsholder.style.zIndex)+ 2;
				Srsholder.style.zIndex =parseInt(Srsholder.style.zIndex)- 2;

				Blsholder.style.zIndex =parseInt(Blsholder.style.zIndex)+ 2;
				SBlsholder.style.zIndex =parseInt(SBlsholder.style.zIndex)- 2;
				Brsholder.style.zIndex =parseInt(Brsholder.style.zIndex)+ 2;
				SBrsholder.style.zIndex =parseInt(SBrsholder.style.zIndex)- 2;

				sessionStorage.removeItem("sholder");
				document.body_check.check_sholder.checked = false;
			
			}
			
		}
		function changeBastZ()
		{
			if(bast.style.zIndex==10)
			{
				bast.style.zIndex =parseInt(bast.style.zIndex)- 2;
				Sbast.style.zIndex  =parseInt(Sbast.style.zIndex)+ 2;
				sessionStorage.setItem("bast","true");
				document.body_check.check_bast.checked = true;
			}
			else 
			{
				bast.style.zIndex =parseInt(bast.style.zIndex)+ 2;
				Sbast.style.zIndex  =parseInt(Sbast.style.zIndex)- 2;
				sessionStorage.removeItem("bast");
				document.body_check.check_bast.checked = false;
			}
		}
		function changeStomachZ()
		{
			if(stomach.style.zIndex==10)
			{
				stomach.style.zIndex =parseInt(stomach.style.zIndex)- 2;
				Sstomach.style.zIndex =parseInt(Sstomach.style.zIndex)+ 2;
				sessionStorage.setItem("stomach","true");
				document.body_check.check_stomach.checked = true;
			}
			else 
			{
				stomach.style.zIndex =parseInt(stomach.style.zIndex)+ 2;
				Sstomach.style.zIndex =parseInt(Sstomach.style.zIndex)- 2;
				sessionStorage.removeItem("stomach");
				document.body_check.check_stomach.checked = false;
			}
		}
		function changeArmZ()
		{
			if(larm.style.zIndex==10||rarm.style.zIndex==10)
			{
				larm.style.zIndex = parseInt(larm.style.zIndex)- 2;
				rarm.style.zIndex =parseInt(rarm.style.zIndex)- 2;
				Slarm.style.zIndex =parseInt(Slarm.style.zIndex)+ 2;
				Srarm.style.zIndex = parseInt(Srarm.style.zIndex)+ 2;

				Blarm.style.zIndex = parseInt(Blarm.style.zIndex)-2;
				SBlarm.style.zIndex = parseInt(SBlarm.style.zIndex)+2;
				Brarm.style.zIndex = parseInt(Brarm.style.zIndex)-2;
				SBrarm.style.zIndex = parseInt(SBrarm.style.zIndex)+2;

				sessionStorage.setItem("arm","true");
				document.body_check.check_arm.checked = true;
			}
			else 
			{
				larm.style.zIndex = parseInt(larm.style.zIndex)+ 2;
				rarm.style.zIndex =parseInt(rarm.style.zIndex)+ 2;
				Slarm.style.zIndex =parseInt(Slarm.style.zIndex)- 2;
				Srarm.style.zIndex = parseInt(Srarm.style.zIndex)- 2;

				Blarm.style.zIndex = parseInt(Blarm.style.zIndex)+2;
				SBlarm.style.zIndex = parseInt(SBlarm.style.zIndex)-2;
				Brarm.style.zIndex = parseInt(Brarm.style.zIndex)+2;
				SBrarm.style.zIndex = parseInt(SBrarm.style.zIndex)-2;

				sessionStorage.removeItem("arm");
				document.body_check.check_arm.checked = false;
			}


			
		}
		function changeThighZ()
		{
			if(thigh.style.zIndex==10)
			{
				thigh.style.zIndex =parseInt(thigh.style.zIndex)- 2;
				Sthigh.style.zIndex =parseInt(Sthigh.style.zIndex)+ 2;

				Bthigh.style.zIndex =parseInt(Bthigh.style.zIndex)- 2;
				SBthigh.style.zIndex =parseInt(SBthigh.style.zIndex)+ 2;

				sessionStorage.setItem("thigh","true");
				document.body_check.check_thigh.checked = true;
			}
			else 
			{
				thigh.style.zIndex =parseInt(thigh.style.zIndex)+ 2;
				Sthigh.style.zIndex =parseInt(Sthigh.style.zIndex)- 2;

				Bthigh.style.zIndex =parseInt(Bthigh.style.zIndex)+ 2;
				SBthigh.style.zIndex =parseInt(SBthigh.style.zIndex)- 2;

				sessionStorage.removeItem("thigh");
				document.body_check.check_thigh.checked = false;
			}
		}
		function changeClafZ()
		{
			if(claf.style.zIndex==10)
			{
				claf.style.zIndex =parseInt(claf.style.zIndex)- 2;
				Sclaf.style.zIndex =parseInt(Sclaf.style.zIndex)+ 2;

				Bclaf.style.zIndex =parseInt(Bclaf.style.zIndex)- 2;
				SBclaf.style.zIndex = parseInt(SBclaf.style.zIndex)+ 2;

				sessionStorage.setItem("claf","true");
				document.body_check.check_claf.checked = true;
			}
			else 
			{
				claf.style.zIndex =parseInt(claf.style.zIndex)+ 2;
				Sclaf.style.zIndex =parseInt(Sclaf.style.zIndex)- 2;

				Bclaf.style.zIndex =parseInt(Bclaf.style.zIndex)+ 2;
				SBclaf.style.zIndex = parseInt(SBclaf.style.zIndex)- 2;

				sessionStorage.removeItem("claf");
				document.body_check.check_claf.checked = false;
			}
		}

		function changeBackZ()
		{
			if(Back.style.zIndex==6||Back.style.zIndex==16)
			{
				Back.style.zIndex = parseInt(Back.style.zIndex)-2;
				SBack.style.zIndex = parseInt(SBack.style.zIndex)+2;
				sessionStorage.setItem("back","true");
				document.body_check.check_back.checked = true;
			}
			else
			{
				Back.style.zIndex = parseInt(Back.style.zIndex)+2;
				SBack.style.zIndex = parseInt(SBack.style.zIndex)-2;
				sessionStorage.removeItem("back");
				document.body_check.check_back.checked = false;
			}


		}

		function changeHipZ()
		{
			if(Hip.style.zIndex==6||Hip.style.zIndex==16)
			{
				Hip.style.zIndex = parseInt(Hip.style.zIndex)-2;
				SHip.style.zIndex = parseInt(SHip.style.zIndex)+2;
				sessionStorage.setItem("hip","true");
				document.body_check.check_hip.checked = true;
			}
			else
			{
				Hip.style.zIndex = parseInt(Hip.style.zIndex)+2;
				SHip.style.zIndex = parseInt(SHip.style.zIndex)-2;
				sessionStorage.removeItem("hip");
				document.body_check.check_hip.checked = false;
			}

		}

		function Turn()
		{
			if(sessionStorage.getItem("turn")=='true')
			{
				Bhead.style.zIndex = parseInt(Bhead.style.zIndex)-10;
				Blsholder.style.zIndex= parseInt(Blsholder.style.zIndex)-10;
				Back.style.zIndex=parseInt(Back.style.zIndex)-10;
				Brsholder.style.zIndex=parseInt(Brsholder.style.zIndex)-10;
				Blarm.style.zIndex=parseInt(Blarm.style.zIndex)-10;
				Brarm.style.zIndex=parseInt(Brarm.style.zIndex)-10;
				Hip.style.zIndex=parseInt(Hip.style.zIndex)-10;
				Bthigh.style.zIndex=parseInt(Bthigh.style.zIndex)-10;
				Bclaf.style.zIndex=parseInt(Bclaf.style.zIndex)-10;


				SBlsholder.style.zIndex= parseInt(SBlsholder.style.zIndex)-10;
				SBack.style.zIndex=parseInt(SBack.style.zIndex)-10;
				SBrsholder.style.zIndex=parseInt(SBrsholder.style.zIndex)-10;
				SBlarm.style.zIndex=parseInt(SBlarm.style.zIndex)-10;
				SBrarm.style.zIndex=parseInt(SBrarm.style.zIndex)-10;
				SHip.style.zIndex=parseInt(SHip.style.zIndex)-10;
				SBthigh.style.zIndex=parseInt(SBthigh.style.zIndex)-10;
				SBclaf.style.zIndex=parseInt(SBclaf.style.zIndex)-10;
				sessionStorage.removeItem("turn");
			}

				
			else
			{
				Bhead.style.zIndex = parseInt(Bhead.style.zIndex)+10;
				Blsholder.style.zIndex= parseInt(Blsholder.style.zIndex)+10;
				Back.style.zIndex=parseInt(Back.style.zIndex)+10;
				Brsholder.style.zIndex=parseInt(Brsholder.style.zIndex)+10;
				Blarm.style.zIndex=parseInt(Blarm.style.zIndex)+10;
				Brarm.style.zIndex=parseInt(Brarm.style.zIndex)+10;
				Hip.style.zIndex=parseInt(Hip.style.zIndex)+10;
				Bthigh.style.zIndex=parseInt(Bthigh.style.zIndex)+10;
				Bclaf.style.zIndex=parseInt(Bclaf.style.zIndex)+10;


				SBlsholder.style.zIndex= parseInt(SBlsholder.style.zIndex)+10;
				SBack.style.zIndex=parseInt(SBack.style.zIndex)+10;
				SBrsholder.style.zIndex=parseInt(SBrsholder.style.zIndex)+10;
				SBlarm.style.zIndex=parseInt(SBlarm.style.zIndex)+10;
				SBrarm.style.zIndex=parseInt(SBrarm.style.zIndex)+10;
				SHip.style.zIndex=parseInt(SHip.style.zIndex)+10;
				SBthigh.style.zIndex=parseInt(SBthigh.style.zIndex)+10;
				SBclaf.style.zIndex=parseInt(SBclaf.style.zIndex)+10;
				sessionStorage.setItem("turn","true");
			}

		}

	</script>
</html>