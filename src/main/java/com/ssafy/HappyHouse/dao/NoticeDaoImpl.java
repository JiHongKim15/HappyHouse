package com.ssafy.HappyHouse.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.HappyHouse.dto.NoticeDto;

@Repository("NoticeDaoImpl")
public class NoticeDaoImpl implements NoticeDao{
	@Autowired
	SqlSession session;

	@Override
	public int addNotice(NoticeDto dto) {
		return session.insert("com.ssafy.HappyHouse.dao.NoticeDao.insert", dto);
	}

	@Override
	public int updateNotice(NoticeDto dto) {
		return session.update("com.ssafy.HappyHouse.dao.NoticeDao.update_notice", dto);
	}

	@Override
	public int removeNotice(int no) {
		return session.delete("com.ssafy.HappyHouse.dao.NoticeDao.delete", no);
	}

	
	@Override
	public List<NoticeDto> getNoticeList() {
		return session.selectList("com.ssafy.HappyHouse.dao.NoticeDao.selectAll");
	}

	@Override
	public NoticeDto getNotice(int no) {
		return session.selectOne("com.ssafy.HappyHouse.dao.NoticeDao.selectOne", no);
	}
	
	@Override
	public int updateRate(int no) {
		return session.update("com.ssafy.HappyHouse.dao.NoticeDao.update_rate", no);
	}
}

