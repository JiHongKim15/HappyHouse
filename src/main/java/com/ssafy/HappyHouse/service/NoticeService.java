package com.ssafy.HappyHouse.service;

import java.util.List;

import com.ssafy.HappyHouse.dto.NoticeDto;

public interface NoticeService {
	public int addNotice(NoticeDto dto);
	public int updateNotice(NoticeDto dto);
	public int removeNotice(int no);
	public List<NoticeDto> getNoticeList();
	public NoticeDto getNotice(int no);
	public int updateRate(int no);
}
