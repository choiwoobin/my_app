<%@page import="java.awt.print.Printable"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	//�����ͺ��̽����� �α���, ��й�ȣ�� �ٸ��� �α���ȭ������ ��������
	// ��ġ�ϸ� session �������ְ�  Admin_dolist�� ������
	
	String id = request.getParameter("id");
	String pw= request.getParameter("pw");
	String db_id="";
	String db_pw="";
	
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String userid = "scott";
	String password = "tiger";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try{
		
		Class.forName(driver);
		
		con = DriverManager.getConnection(url,userid,password);
		
		String sql = "select id,pw from ADMIN_INFO where id='admin'";
		
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			
			db_id = rs.getString("id");
			db_pw = rs.getString("pw");
		}
	}catch(Exception e){
		System.out.println("�����߻�1 / admimOK");
		e.printStackTrace();
	}finally{
		try{
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(con != null) con.close();
		}catch(Exception e2){
				System.out.println("�����߻�2 / adminOK");
				e2.printStackTrace();
		}
		
	}
	
	
	if((db_id.equals(id))&&(db_pw.equals(pw)))
	{
		session.setAttribute("id",id);
		session.setAttribute("pw",pw);		
		response.sendRedirect("Admin_dolist.jsp");
	}
	else
	{	out.println("<script>alert('���̵� ��й�ȣ�� Ʋ�Ƚ��ϴ�.');history.back();</script>");		
	}
%>
</body>
</html>