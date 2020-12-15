package com.ssafy.HappyHouse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.HappyHouse.dao.QnADAO;
import com.ssafy.HappyHouse.dto.QnA;

@Service
public class QnAServiceImpl implements QnAService {

	@Autowired
	private QnADAO dao;
	
	@Override
	public List<QnA> retrieveQnA() {
		return dao.selectQnA();
	}
	
	public QnA selectOneQnA(int qnaNo) {
		return dao.selectOneQnA(qnaNo);
	}

	@Override
	public int insert(QnA qna) {
		return dao.insert(qna);
	}

	@Override
	public boolean update(QnA qna) {
		return dao.update(qna);
	}

	@Override
	public boolean delete(int qnaNo) {
		return dao.delete(qnaNo);
	}

}
