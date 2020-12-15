package com.ssafy.HappyHouse.dao;

import java.util.List;

import com.ssafy.HappyHouse.dto.QnA;

public interface QnADAO {
	public List<QnA> selectQnA();
	public QnA selectOneQnA(int qnaNo);
	public int insert(QnA qna);
	public boolean update(QnA qna);
	public boolean delete(int qnaNo);
}