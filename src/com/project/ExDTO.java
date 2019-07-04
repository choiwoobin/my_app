package com.project;

public class ExDTO {
	String ename;
	
	String bast;

	String sholder;
	String arm;
	String stomach;
	String thigh;
	String claf;
	String back;
	String hip;
	
	String info_text;
	String info_imgurl;
	String info_yturl;
	public ExDTO(String ename){
		this.ename = ename;
	}
	
	public ExDTO(String ename, String info_text, String info_imgurl, String info_yturl){
		this.ename = ename;
		this.info_text = info_text;
		this.info_imgurl = info_imgurl;
		this.info_yturl = info_yturl;
	}
	
	public ExDTO(String ename,String bast, String sholder, String arm, String stomach,String thigh, String claf, String back, String hip,String info_text, String info_imgurl, String info_yturl){
		this.ename = ename;
		
		this.bast = bast;
		this.sholder = sholder;
		this.arm = arm;
		this.stomach = stomach;
		this.thigh = thigh;
		this.claf = claf;
		this.back = back;
		this.hip = hip;
		
		this.info_text = info_text;
		this.info_imgurl = info_imgurl;
		this.info_yturl = info_yturl;
	}
	
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getInfo_text() {
		return info_text;
	}
	public void setInfo_text(String info_text) {
		this.info_text = info_text;
	}
	public String getInfo_imgurl() {
		return info_imgurl;
	}
	public void setInfo_imgurl(String info_imgurl) {
		this.info_imgurl = info_imgurl;
	}
	public String getInfo_yturl() {
		return info_yturl;
	}
	public void setInfo_yturl(String info_yturl) {
		this.info_yturl = info_yturl;
	}
	public String getBast() {
		return bast;
	}

	public String getSholder() {
		return sholder;
	}

	public String getArm() {
		return arm;
	}

	public String getStomach() {
		return stomach;
	}

	public String getThigh() {
		return thigh;
	}

	public String getClaf() {
		return claf;
	}

	public String getBack() {
		return back;
	}

	public String getHip() {
		return hip;
	}
}
