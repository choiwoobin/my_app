package com.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ExDAO1 {
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String userid = "scott";
	String password = "tiger";
	
	String bast;
	String sholder;
	String arm;
	String stomach;
	String thigh;
	String claf;
	String back;
	String hip;
	
	
	public ExDAO1(String bast, String sholder, String arm, String stomach,String thigh, String claf, String back, String hip)
	{
		this.bast = bast;
		this.sholder = sholder;
		this.arm = arm;
		this.stomach = stomach;
		this.thigh = thigh;
		this.claf = claf;
		this.back = back;
		this.hip = hip;
		
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
			
//			String sql = "select ename,info_text,info_imgurl,info_yturl from exercise where";
			String sql = "select ename from exercise where";
			
			int n=0;
			String t="true";
			if(t.equals(bast))
			{sql += " bast = 'true'"; n++;}
			if(t.equals(sholder)){if(n>=1){sql += " and ";}sql += " sholder = 'true'"; n++;}
			if(t.equals(arm)){if(n>=1){sql += " and ";}sql += " arm = 'true'"; n++;}
			if(t.equals(stomach)){if(n>=1){sql += " and ";}sql += " stomach= 'true'"; n++;}
			if(t.equals(thigh)){if(n>=1){sql += " and ";}sql += " thigh = 'true'"; n++;}
			if(t.equals(claf)){if(n>=1){sql += " and ";}sql += " claf = 'true'"; n++;}
			if(t.equals(back)){if(n>=1){sql += " and ";}sql += " back = 'true'"; n++;}
			if(t.equals(hip)){if(n>=1){sql += " and ";}sql += " hip = 'true'"; n++;}
			if(n==0){
				sql = "select ename,info_text,info_imgurl,info_yturl from exercise where ename = 'no result'"; // 아무것도 select 안됨
			}
			
			pstmt = con.prepareStatement(sql);
			System.out.println(sql);
			rs = pstmt.executeQuery();
			
			
			while(rs.next()){
				
				String db_ename = rs.getString("ename");
//				String db_text = rs.getString("info_text");
//				String db_imgurl = rs.getString("info_imgurl");
//				String db_yturl = rs.getString("info_yturl");
				
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
	 
}
