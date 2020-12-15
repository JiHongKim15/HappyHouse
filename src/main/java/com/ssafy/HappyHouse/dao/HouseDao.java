package com.ssafy.HappyHouse.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.HappyHouse.dto.HouseDeal;
import com.ssafy.HappyHouse.dto.HousePageBean;

@Mapper
public interface HouseDao {
	
	 List<HouseDeal> searchAll(HousePageBean  bean);
	
	 HouseDeal search(int no) ;

	 List<HouseDeal> searchAlln() ;
	 
	 List<HouseDeal> searchDongJibun(String dong, String jibun, String aptname);
	
	//추가 기능 구현
}
