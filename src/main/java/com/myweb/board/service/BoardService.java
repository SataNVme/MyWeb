package com.myweb.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface BoardService {

	//인터페이스의 특징을 활용하도록 구현
	public void execute(HttpServletRequest request, HttpServletResponse response);
	
}
