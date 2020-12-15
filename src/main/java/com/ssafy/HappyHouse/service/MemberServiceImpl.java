package com.ssafy.HappyHouse.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.HappyHouse.dao.MemberInfoDao;
import com.ssafy.HappyHouse.dto.MemberDto;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberInfoDao memberDao;
	
	@Override
	public MemberDto login(String userid, String userpwd)  {
		if(userid == null || userpwd == null)
			return null;
		return memberDao.login(userid, userpwd);
	}

	@Override
	public void insert(String userid, String username, String userpwd, String email, String address) {
		System.out.println("2");
		memberDao.insert(userid, username, userpwd, email, address);
	}

	@Override
	public void update(MemberDto mem) {
		memberDao.update(mem);
	}

	@Override
	public void delete(String userid, String userpwd) {
		memberDao.delete(userid, userpwd);
	}

	@Override
	public MemberDto searchPw(String userid) {
		return memberDao.searchPw(userid);
	}

	@Override
	public void insert_interest(MemberDto mem) {
		memberDao.insert_interest(mem);
		
	}

	

}
