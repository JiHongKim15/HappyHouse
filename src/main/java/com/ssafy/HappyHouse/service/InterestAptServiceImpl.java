package com.ssafy.HappyHouse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.HappyHouse.dao.InterestAptDao;
import com.ssafy.HappyHouse.dto.InterestAptDto;

@Service
public class InterestAptServiceImpl implements InterestAptService {

	@Autowired
	private InterestAptDao interestaptDao;
	
	@Override
	public int insert(InterestAptDto interestaptdto) {
		return interestaptDao.insert(interestaptdto);
	}

	@Override
	public List<InterestAptDto> searchAll(String userid) {
		// TODO Auto-generated method stub
		return interestaptDao.searchAll(userid);
	}
	
	

}
