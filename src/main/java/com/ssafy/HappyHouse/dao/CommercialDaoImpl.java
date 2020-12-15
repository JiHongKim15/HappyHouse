package com.ssafy.HappyHouse.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.HappyHouse.dto.CommercialDTO;

@Repository("CommercialDaoImpl")
public class CommercialDaoImpl implements CommercialDao {
	@Autowired
	SqlSession session;

	@Override
	public List<CommercialDTO> list(String dong) {
		return session.selectList("commercial.selectAll", dong);
	}
}
