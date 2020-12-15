package com.ssafy.HappyHouse.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.HappyHouse.dto.HouseInfoDTO;
import com.ssafy.HappyHouse.dto.SidoCodeDTO;

@Mapper
public interface FSelectBoxDAO {

	
	SidoCodeDTO selectUserSido(String sido);
	
	ArrayList<SidoCodeDTO> selectSido()  ;

	ArrayList<SidoCodeDTO> selectGugun(String sido)  ;

	ArrayList<HouseInfoDTO> selectDong(String gugun)  ;

	ArrayList<HouseInfoDTO> selectApt(String dong)  ;

}
