package com.ssafy.HappyHouse.dao;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.HappyHouse.dto.MemberDto;

@Mapper
public interface MemberInfoDao {
	public MemberDto login(String userid, String userpwd) ;
	public void insert(String userid, String username, String userpwd, String email, String address) ;
	public void update(MemberDto mem);
	public void delete(String userid, String userpwd);
	public MemberDto searchPw(String userid) ;
	public void insert_interest(MemberDto mem);
}
