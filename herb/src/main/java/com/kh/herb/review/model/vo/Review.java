package com.kh.herb.review.model.vo;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Review {
	private int pNum;
	private int rNum;
	private String rWriter;
	private String rContent;
	private Date rDate;
	private int rStar;
	
	private List<ReviewFile> mFileList;
	private List<MultipartFile> fileName;
	private List<String> oldFileName;
	private List<ReviewFile> oldFileList;
	
	public List<ReviewFile> getmFileList() {
		return mFileList;
	}
	public void setmFileList(List<ReviewFile> mFileList) {
		this.mFileList = mFileList;
	}
	public List<MultipartFile> getFileName() {
		return fileName;
	}
	public void setFileName(List<MultipartFile> fileName) {
		this.fileName = fileName;
	}
	public List<String> getOldFileName() {
		return oldFileName;
	}
	public void setOldFileName(List<String> oldFileName) {
		this.oldFileName = oldFileName;
	}
	public List<ReviewFile> getOldFileList() {
		return oldFileList;
	}
	
	public void setOldFileList(List<ReviewFile> oldFileList) {
		this.oldFileList = oldFileList;
	}
	public int getpNum() {
		return pNum;
	}
	public void setpNum(int pNum) {
		this.pNum = pNum;
	}
	public int getrNum() {
		return rNum;
	}
	public void setrNum(int rNum) {
		this.rNum = rNum;
	}
	public String getrWriter() {
		return rWriter;
	}
	public void setrWriter(String rWriter) {
		this.rWriter = rWriter;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	public int getrStar() {
		return rStar;
	}
	public void setrStar(int rStar) {
		this.rStar = rStar;
	}
	 
}
