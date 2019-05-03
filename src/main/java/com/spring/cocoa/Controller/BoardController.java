package com.spring.cocoa.Controller;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.cocoa.Service.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Resource(name="boardService") 
	private BoardService boardService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/board/boardList/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,Map<String, Object> map) throws Exception {
		logger.info("게시판 리스트 이동");
		
		List<Map<String, Object>> list = boardService.selectBoardList(map);
		model.addAttribute("list", list );
		
		return "board/BoardList";
	}
}
