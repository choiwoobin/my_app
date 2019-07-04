package com.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.project.ExDTO;
public class AdminDAO {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String userid = "scott";
	String password = "tiger";
	
	String ename;
	String bast;
	String sholder;
	String arm;
	String stomach;
	String thigh;
	String claf;
	String back;
	String hip;
	String text_info;
	String imgurl;
	String yturl;
	public AdminDAO(String ename){
		
		this.ename = ename;
	}
	
	public AdminDAO(String ename, String bast, String sholder, String arm, String stomach,String thigh, String claf, String back, String hip,String text_info,String imgurl, String yturl){
		this.ename = ename;
		this.bast = bast;
		this.sholder = sholder;
		this.arm = arm;
		this.stomach = stomach;
		this.thigh = thigh;
		this.claf = claf;
		this.back = back;
		this.hip = hip;
		this.text_info = text_info;
		this.imgurl = imgurl;
		this.yturl = yturl;
		
		try{
			Class.forName(driver);
		}catch(Exception e1){ System.out.println("오류발생");}
	}
	
	public void answerEx(){
		Connection con = null;
		PreparedStatement pstmt = null;
		int n;
		
		try{
			con = DriverManager.getConnection(url, userid, password);
			
			String sql = "insert into EXERCISE Values(? , ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ename);
			pstmt.setString(2, bast);
			pstmt.setString(3, sholder);
			pstmt.setString(4, arm);
			pstmt.setString(5, stomach);
			pstmt.setString(6, thigh);
			pstmt.setString(7, claf);
			pstmt.setString(8, back);
			pstmt.setString(9, hip);
			pstmt.setString(10, text_info);
			pstmt.setString(11, yturl);
			pstmt.setString(12, imgurl);
			System.out.println(sql);
			n = pstmt.executeUpdate();

			
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
	public ExDTO answer_alter(){
		ExDTO answer = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			con = DriverManager.getConnection(url, userid, password);
			
			String sql = "select * from exercise where ename ='"+ename+"'";
			pstmt = con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			System.out.println("알터문의 SQL : " + sql);
			while(rs.next()){
				
				String db_ename = ename;
				String db_bast = rs.getString("bast");
				String db_sholder = rs.getString("sholder");
				String db_arm = rs.getString("arm");
				String db_stomach = rs.getString("stomach");
				String db_thigh = rs.getString("thigh");
				String db_claf = rs.getString("claf");
				String db_back = rs.getString("back");
				String db_hip = rs.getString("hip");
				String db_info_text = rs.getString("info_text");
				String db_info_yturl = rs.getString("info_yturl");
				String db_info_imgurl = rs.getString("info_imgurl");
				
				answer = new ExDTO(db_ename,db_bast,db_sholder,db_arm,db_stomach,db_thigh,db_claf,db_back,db_hip,db_info_text,db_info_imgurl,db_info_yturl);
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
	public void answer_alter_fin(){
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		
		try{
			String s = "null";
			con = DriverManager.getConnection(url, userid, password);
			
			String sql = "update exercise set bast= ? ,sholder = ?,arm=? ,stomach=? ,thigh=? ,claf =?,back =? ,hip=? ,info_text=?,info_yturl=? ,info_imgurl=? where ename = '"+ename+"'";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bast);
			pstmt.setString(2, sholder);
			pstmt.setString(3, arm);
			pstmt.setString(4, stomach);
			pstmt.setString(5, thigh);
			pstmt.setString(6, claf);
			pstmt.setString(7, back);
			pstmt.setString(8, hip);
			if(text_info.equals(s))
				text_info = null;
			pstmt.setString(9, text_info);
			if(imgurl.equals(s))
				imgurl = null;
			pstmt.setString(10, yturl);
			if(yturl.equals(s))
				yturl = null;
			pstmt.setString(11, imgurl);
			
			
			int n = pstmt.executeUpdate();
			System.out.println("알터문의 SQL : " + sql);
			
			
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
