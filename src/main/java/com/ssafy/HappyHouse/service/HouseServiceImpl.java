package com.ssafy.HappyHouse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ssafy.HappyHouse.dao.HouseDao;
import com.ssafy.HappyHouse.dto.HouseDeal;
import com.ssafy.HappyHouse.dto.HousePageBean;

@Service("HouseServiceImpl")
public class HouseServiceImpl implements HouseService {

	@Autowired
	HouseDao dao;

	/**
	 * 검색 조건(key) 검색 단어(word)에 해당하는 아파트 거래 정보(HouseInfo)를 검색해서 반환.
	 *
	 * @param bean 검색 조건과 검색 단어가 있는 객체
	 * @return 조회한 식품 목록
	 */

	public List<HouseDeal> searchAll(HousePageBean bean) {
		int[] type = bean.getSearchType();
		int cnt = 0;
		for (int b : type) {
			if (b != 0) {
				cnt++;
			}
		}
		return dao.searchAll(bean);
	}

	/**
	 * 아파트 식별 번호에 해당하는 아파트 거래 정보를 검색해서 반환.
	 *
	 * @param no 검색할 아파트 식별 번호
	 * @return 아파트 식별 번호에 해당하는 아파트 거래 정보를 찾아서 리턴한다, 없으면 null이 리턴됨
	 */

	public HouseDeal search(int no) {
		HouseDeal deal = dao.search(no);
		return deal;

	}

	@Override
	public List<HouseDeal> searchAll() {
		// TODO Auto-generated method stub
		return dao.searchAlln();
	}

	@Override
	public List<HouseDeal> searchDongJibun(String dong, String jibun, String aptname) {
		// TODO Auto-generated method stub
		System.out.println(aptname);
		return dao.searchDongJibun(dong, jibun, aptname);
	}
}