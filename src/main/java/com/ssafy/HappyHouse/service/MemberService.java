package com.ssafy.HappyHouse.service;

import com.ssafy.HappyHouse.dto.MemberDto;

public interface MemberService {
	
	public MemberDto login(String userid, String userpwd);
	public void insert(String userid, String username, String userpwd, String email, String address) ;
	public void update(MemberDto mem) ;
	public void delete(String userid, String userpwd) ;
	public MemberDto searchPw(String userid);
	public void insert_interest(MemberDto mem);


}
