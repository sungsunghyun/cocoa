package com.spring.cocoa.Service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.swing.Spring;

import org.springframework.stereotype.Service;

import com.spring.cocoa.DAO.BoardDAO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{

	@Resource(name="boardDAO")
	private BoardDAO boardDAO;

	@Override
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.selectBoardList(map);
	}

}

