package com.ssafy.HappyHouse.dao;


import java.util.List;

import com.ssafy.HappyHouse.dto.CommercialDTO;

public interface CommercialDao {

	public List<CommercialDTO> list(String dong);

}
