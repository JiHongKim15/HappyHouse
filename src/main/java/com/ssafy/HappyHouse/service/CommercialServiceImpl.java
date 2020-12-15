package com.ssafy.HappyHouse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ssafy.HappyHouse.dao.CommercialDao;
import com.ssafy.HappyHouse.dto.CommercialDTO;

@Service("CommercialServiceImpl")
public class CommercialServiceImpl implements CommercialService{
	
	@Autowired
	@Qualifier("CommercialDaoImpl")
	CommercialDao dao;

	@Override
	public List<CommercialDTO> list(String dong) {
		return dao.list(dong);
	}

}
