//package com.ssafy.HappyHouse.dao;
//
//import java.sql.SQLException;
//import java.util.List;
//
//import org.apache.ibatis.session.SqlSession;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;
//
//import com.ssafy.HappyHouse.dto.HouseDeal;
//import com.ssafy.HappyHouse.dto.HousePageBean;
//
//@Repository("HouseDaoImpl")
//public class HouseDaoImpl implements HouseDao {
//
//    @Autowired
//    SqlSession sqlSession;
//
//    @Override
//    public List<HouseDeal> selectAll() {
//        return sqlSession.selectList("com.ssafy.HappyHouse.mapper.HouseDealMapper.selectAll");
//    }
//
//
//    public List<HouseDeal> select(HousePageBean bean) {
//        return sqlSession.selectList("com.ssafy.HappyHouse.mapper.HouseDealMapper.select", bean);
//    }
//
//    /**
//     * 아파트 식별 번호에 해당하는 아파트 거래 정보를 검색해서 반환한다.<br/>
//     * 법정동+아파트명을 이용하여 HouseInfo에서 건축연도, 법정코드, 지번, 이미지 정보를 찾아서 HouseDeal에 setting한 정보를 반환한다.
//     *
//     * @param no 검색할 아파트 식별 번호
//     * @return 아파트 식별 번호에 해당하는 아파트 거래 정보를 찾아서 리턴한다, 없으면 null이 리턴됨
//     */
//
//    public HouseDeal selectNo(int no) {
//        return sqlSession.selectOne("com.ssafy.HappyHouse.mapper.HouseDealMapper.selectNo", no);
//    }
//}