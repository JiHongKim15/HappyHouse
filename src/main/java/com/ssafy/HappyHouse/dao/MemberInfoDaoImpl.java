//package com.ssafy.HappyHouse.dao;
//
//import java.sql.SQLException;
//import java.util.HashMap;
//import java.util.Map;
//
//import org.apache.ibatis.session.SqlSession;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;
//
//import com.ssafy.HappyHouse.dto.MemberDto;
//
//@Repository
//public class MemberInfoDaoImpl implements MemberInfoDao {
//	
//	@Autowired
//	SqlSession sqlSession;
//	
//	public MemberDto login(String userid, String userpwd) {
//		MemberDto mem = sqlSession.selectOne("selectMem", userid);
//		System.out.println("aa" + mem.getUserpwd());
//		if(mem.getUserpwd().equals(userpwd)) {
//			return mem;
//		}
//		else return null;
//	}
//
//	@Override
//	public void insert(String userid, String username, String userpwd, String email, String address) {
//		MemberDto mem = new MemberDto(userid, username, userpwd, email, address);
//		
//		sqlSession.insert("insertMem", mem);
//	}
//
//	@Override
//	public void update(String userid, String username, String userpwd, String email, String address)  {
//		MemberDto mem = new MemberDto(userid, username, userpwd, email, address);
//		
//		sqlSession.update("updateMem", mem);
//	}
//
//	@Override
//	public void delete(String userid, String userpwd) {
//		sqlSession.delete("deleteMem", userid);
//	}
//
//	@Override
//	public MemberDto searchPw(String userid) {
//		return sqlSession.selectOne("searchPWMem", userid);
//	}
//
//}
