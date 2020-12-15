package com.ssafy.HappyHouse.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.HappyHouse.dao.FSelectBoxDAO;
import com.ssafy.HappyHouse.dto.HouseInfoDTO;
import com.ssafy.HappyHouse.dto.SidoCodeDTO;

@Service
public class FSelectBoxServiceImpl implements FSelectBoxService {

	@Autowired
	private FSelectBoxDAO dao;


	@Override
	public ArrayList<SidoCodeDTO> selectSido()   {
		ArrayList<SidoCodeDTO> list = dao.selectSido();
		return list;
	}

	@Override
	public ArrayList<SidoCodeDTO> selectGugun(String sido)   {
		ArrayList<SidoCodeDTO> list = dao.selectGugun(sido);
		return list;
	}

	@Override
	public ArrayList<HouseInfoDTO> selectDong(String gugun)   {
		ArrayList<HouseInfoDTO> list = dao.selectDong(gugun);
		return list;
	}

	@Override
	public ArrayList<HouseInfoDTO> selectApt(String dong)   {
		ArrayList<HouseInfoDTO> list = dao.selectApt(dong);
		return list;
	}

	@Override
	public SidoCodeDTO selectUserSido(String sido) {
		
		return dao.selectUserSido(sido);
	}

}
