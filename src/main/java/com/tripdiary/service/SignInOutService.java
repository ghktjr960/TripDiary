package com.tripdiary.service;

import com.tripdiary.vo.MemberVo;

public interface SignInOutService {

	// 세션 확인용 테스트 코드 삭제해야됨
	public MemberVo memberLoginTest(String id) throws Exception;
	
}
