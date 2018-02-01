package com.ohhoonim.common.service.impl;

import java.sql.Timestamp;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ohhoonim.common.service.IdGenService;
import com.ohhoonim.common.util.Utils;
import com.ohhoonim.dao.IdGenDao;

@Service("idGenService")
public class IdGenServiceImpl implements IdGenService {

	@Resource(name="idGenDao")
	IdGenDao idGenDao;
	
	@Override
	public String getNextId(String tableName) {
		StringBuffer sb = new StringBuffer();
		String nextId = idGenDao.getNextId(tableName);
		idGenDao.updateNextId(tableName);
		
		if (tableName != null) {
			String code = "";
			String[] codeSet = tableName.split("_");
			if (codeSet.length == 2) {
				code = codeSet[1];
				sb = sb.append(code);
				sb = sb.append(Utils.fixedNumber(nextId, 5));
			}
		}
		return sb.toString();
	}
	
//	비디오 아이디 생성
	@Override
	public String videoIdGen() {
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		long id = timestamp.getTime();
		String videoId = Long.toString(id);
		
		return videoId;
	}
	
//	비디오 썸네일 생성
	@Override
	public String thumbGen(String url) {
		StringBuffer sb = new StringBuffer();
		String key = "";
		
		String[] keySet = url.split("v=");
		
		if (keySet.length == 2) {
			key = keySet[1];
			
			sb.append("https://img.youtube.com/vi/");
			sb.append(key);
			sb.append("/0.jpg");
		}
		return sb.toString();
	}
//	비디오 수정 썸네일 생성
	@Override
	public String thumbGen2(String url) {
		StringBuffer sb = new StringBuffer();
		String key = "";
		
		String[] keySet = url.split("/embed/");
		
		if (keySet.length == 2) {
			key = keySet[1];
			
			sb.append("https://img.youtube.com/vi/");
			sb.append(key);
			sb.append("/0.jpg");
		}
		return sb.toString();
	}
	
//	비디오 재생 url 생성
	@Override
	public String urlGen(String url) {
		StringBuffer sb = new StringBuffer();
		String key = "";
		
		String[] keySet = url.split("v=");
		
		if (keySet.length == 2) {
			key = keySet[1];
			
			sb.append("https://www.youtube.com/embed/");
			sb.append(key);
		}
		return sb.toString();
	}
	
//	북마크 그룹 아이디 생성
	@Override
	public String bookGroupIdGen(String memId) {
		String groupNo = idGenDao.getGroupNo(memId);
		idGenDao.updateGroupNo(memId);
		
		String idx = Utils.fixedNumber(groupNo, 4);
		
		return idx;
	}
}


