package com.ssafy.HappyHouse.service;

import java.util.List;

import com.ssafy.HappyHouse.dto.InterestAptDto;

public interface InterestAptService {

	public int insert(InterestAptDto interestaptdto);
	public List<InterestAptDto> searchAll(String userid);
}
