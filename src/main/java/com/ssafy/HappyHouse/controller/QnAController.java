package com.ssafy.HappyHouse.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.HappyHouse.dto.QnA;
import com.ssafy.HappyHouse.service.QnAService;

import io.swagger.annotations.ApiOperation;

//http://localhost:9999/happyhouse/swagger-ui.html
@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/api/qna") // swaggerconfig에서 api/**했어서 -> /api/qna 해야
public class QnAController {

	private static final Logger logger = LoggerFactory.getLogger(QnAController.class);

	@Autowired
	private QnAService qnaService;

	
	@ApiOperation(value = "모든 질문게시판의 정보를 반환한다.", response = List.class)
	@GetMapping
	public ResponseEntity<List<QnA>> retrieveBoard() throws Exception {
		logger.debug("retrieveQnA - 호출!!!!!!!!!!!!!!!");
		return new ResponseEntity<List<QnA>>(qnaService.retrieveQnA(), HttpStatus.OK);
	}

	  @ApiOperation(value = " 해당번호 질문게시판의 정보를 조회한다.", response = String.class)
	  @GetMapping("/{qnaNo}")
		public ResponseEntity<QnA> selectOneQnA(@PathVariable int qnaNo) throws Exception {
		  logger.debug("selectOneQnA - 호출");
			QnA qna = qnaService.selectOneQnA(qnaNo);
			if (qna == null) {
				return new ResponseEntity(HttpStatus.NO_CONTENT);
			}
			return new ResponseEntity<QnA>(qna, HttpStatus.OK);
		}
	    
	@ApiOperation(value = "질문 내용을 등록한다.", response = String.class)
	@PostMapping
	public ResponseEntity<String> insert(@RequestBody QnA qna) throws Exception {
		logger.debug("insert - 호출");
	
		int insert = qnaService.insert(qna);
		if (insert == 1)
			return new ResponseEntity<String>("success", HttpStatus.OK);
		else
			return new ResponseEntity<String>("fail", HttpStatus.OK);
	}

	@ApiOperation(value = "질문 내용을 수정한다.", response = String.class)
	@PutMapping
	public ResponseEntity<String> update(@RequestBody QnA qna) throws Exception {
		logger.debug("update - 호출");
		System.out.println("수정!!!!!");
		System.out.println(qna.toString());
		
		boolean update = qnaService.update(qna);
		if (!update) {
			return new ResponseEntity<String>("fail", HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}

	@ApiOperation(value = " 해당 질문 정보를 삭제한다.", response = String.class)
	@DeleteMapping("/{qnaNo}")
	public ResponseEntity<String> delete(@PathVariable int qnaNo) throws Exception {
		logger.debug("delete - 호출");
		boolean delete = qnaService.delete(qnaNo);
		if (!delete) {
			return new ResponseEntity<String>("fail", HttpStatus.NO_CONTENT);
		}
			return new ResponseEntity<String>("success", HttpStatus.OK);
	}

}