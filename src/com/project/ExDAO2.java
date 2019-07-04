package com.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ExDAO2 {
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String userid = "scott";
	String password = "tiger";
	
	String ename;
	
	
	public ExDAO2(String ename)
	{
		this.ename = ename;
		
		try{
			Class.forName(driver);
		}catch(Exception e1){ System.out.println("오류발생");}
		
	}
	
	public ArrayList<ExDTO> answerEx(){
		ArrayList<ExDTO> answer = new ArrayList<ExDTO>();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			con = DriverManager.getConnection(url, userid, password);
			
			String sql = "select info_text,info_imgurl,info_yturl from exercise where ename ='"+ename+"'";
//			String sql = "select ename from exercise where";
			
			
			
			pstmt = con.prepareStatement(sql);
			System.out.println(sql);
			rs = pstmt.executeQuery();
			
			
			while(rs.next()){
				
				String db_ename = ename;
				String db_text = rs.getString("info_text");
				String db_imgurl = rs.getString("info_imgurl");
				String db_yturl = rs.getString("info_yturl");
				
				ExDTO obj = new ExDTO(db_ename,db_text, db_imgurl, db_yturl);
				answer.add(obj);
			}
			
		}catch(Exception e2){System.out.println("오류발생2");
		}finally{
			try{
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();
			}catch(Exception e2){
				System.out.println("오류발생3");
			}
		}
		
		
		
		return answer;
	}
	 
}
