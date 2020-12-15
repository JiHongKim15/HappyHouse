package com.ssafy.HappyHouse.service;

import java.util.ArrayList;

import com.ssafy.HappyHouse.dto.HouseInfoDTO;
import com.ssafy.HappyHouse.dto.SidoCodeDTO;

public interface FSelectBoxService {

	SidoCodeDTO selectUserSido(String sido);
	
	ArrayList<SidoCodeDTO> selectSido();

	ArrayList<SidoCodeDTO> selectGugun(String sido) ;

	ArrayList<HouseInfoDTO> selectDong(String gugun) ;

	ArrayList<HouseInfoDTO> selectApt(String dong) ;

}
