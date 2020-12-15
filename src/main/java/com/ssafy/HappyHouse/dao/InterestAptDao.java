package com.ssafy.HappyHouse.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.HappyHouse.dto.InterestAptDto;

@Mapper
public interface InterestAptDao {
	
	public int insert(InterestAptDto interestaptdto);
	public List<InterestAptDto> searchAll(String userid);
}
