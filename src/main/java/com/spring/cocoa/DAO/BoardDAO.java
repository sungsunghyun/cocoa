package com.spring.cocoa.DAO;

import java.util.List;
import java.util.Map;
import com.spring.cocoa.DAO.AbstractDAO;

import org.springframework.stereotype.Repository;

@Repository("boardDAO")
public class BoardDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>)selectList("board.selectBoardList", map);

	}
	
}
