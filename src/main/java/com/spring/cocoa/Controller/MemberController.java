package com.spring.cocoa.Controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.cocoa.Service.MemberService;
import com.spring.cocoa.VO.RegisterRequest;
import com.spring.cocoa.exception.AlreadyExistingEmailException;
import com.spring.cocoa.exception.AlreadyExistingIdException;
import com.spring.cocoa.util.RegisterRequestValidator;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Resource(name="memberService") 
	private MemberService memberService;
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/member/login/", method = RequestMethod.GET)
	public String login( Model model){

		return "member/Login";
	}
	
	
	@RequestMapping(value = "/member/join/", method = RequestMethod.GET)
	public ModelAndView  join() throws Exception {
		System.out.println("회원가입폼으로 이동");
        ModelAndView mv = new ModelAndView("member/join");
        mv.addObject("registerRequest", new RegisterRequest());
        return mv;

	}
	
	@RequestMapping(value = "/member/joinProc/", method = RequestMethod.POST)
	public ModelAndView joinProc( Model model,RegisterRequest regReq, Errors errors) throws Exception{
		System.out.println("회원가입 프로세스 param" );
        new RegisterRequestValidator().validate(regReq, errors);
        if(errors.hasErrors()) {
            ModelAndView mv = new ModelAndView("member/join");
            return mv;
        }
        try {
        	memberService.register(regReq);
        } catch (AlreadyExistingEmailException e) {
            errors.rejectValue("mem_mail", "duplicate", "이미 가입된 이메일입니다.");
            ModelAndView mv = new ModelAndView("member/join");
            return mv;
        } catch (AlreadyExistingIdException e) {
            errors.rejectValue("mem_id", "duplicate", "이미 가입된 아이디입니다.");
            ModelAndView mv = new ModelAndView("member/join");
            return mv;
        }
        ModelAndView mv = new ModelAndView("member/joinConfirm");
        return mv;

	}	
}
