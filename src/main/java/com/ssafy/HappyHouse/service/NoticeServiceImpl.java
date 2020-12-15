package com.ssafy.HappyHouse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ssafy.HappyHouse.dao.NoticeDao;
import com.ssafy.HappyHouse.dto.NoticeDto;


@Service("NoticeServiceImpl")
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	@Qualifier("NoticeDaoImpl")
	NoticeDao dao;

	@Override
	public int addNotice(NoticeDto dto) {
		return dao.addNotice(dto);
	}
	
	@Override
	public int updateNotice(NoticeDto dto) {
		return dao.updateNotice(dto);
	}

	@Override
	public int removeNotice(int no) {
		return dao.removeNotice(no);
	}

	@Override
	public List<NoticeDto> getNoticeList() {
		return dao.getNoticeList();
	}
	
	@Override
	public NoticeDto getNotice(int no) {
		return dao.getNotice(no);
	}

	@Override
	public int updateRate(int no) {
		return dao.updateRate(no);
	}
}