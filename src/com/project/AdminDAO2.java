package com.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class AdminDAO2 {
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String userid = "scott";
	String password = "tiger";
	
	String[] enames;
	
	public AdminDAO2(String[] enames){
		this.enames = enames;
		
	}
	
	public AdminDAO2()
	{
		
		
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
			
		//	String sql = "select info_text,info_imgurl,info_yturl from exercise where ename ='"+ename+"'";
			String sql = "select ename from exercise";
			
			
			
			pstmt = con.prepareStatement(sql);
			System.out.println(sql);
			rs = pstmt.executeQuery();
			
			
			while(rs.next()){
				
				String db_ename = rs.getString("ename");
				
				ExDTO obj = new ExDTO(db_ename);
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
	
	public void answerEx_del(){
		Connection con = null;
		PreparedStatement pstmt = null;
		
		
		try{
			con = DriverManager.getConnection(url, userid, password);
			
			for(String s: enames){
				String sql = "delete from exercise where ename = '"+s+"'";
				pstmt = con.prepareStatement(sql);
				System.out.println(sql);
				int n = pstmt.executeUpdate();
			}
		}catch(Exception e2){System.out.println("오류발생2");
		}finally{
			try{
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();
			}catch(Exception e2){
				System.out.println("오류발생3");
			}
		}
		
	}
	 
}
