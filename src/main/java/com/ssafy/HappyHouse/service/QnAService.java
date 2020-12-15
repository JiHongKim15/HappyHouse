package com.ssafy.HappyHouse.service;
import java.util.List;

import com.ssafy.HappyHouse.dto.QnA;

public interface QnAService {
	public List<QnA> retrieveQnA();
	public QnA selectOneQnA(int qnaNo);
	public int insert(QnA qna);
	public boolean update(QnA qna);
	public boolean delete(int qnaNo);
}