package com.ohhoonim.common.service;

public interface IdGenService {
	public String getNextId(String tableName);
	
//	북마크 그룹 아이디 생성
	public String bookGroupIdGen(String memId);
//	비디오 썸네일 생성
	public String thumbGen(String url);
//	비디오 수정 썸네일 생성
	public String thumbGen2(String url);
//	비디오 재생 url 생성
	public String urlGen(String url);
//	비디오 아이디 생성
	public String videoIdGen();
}
