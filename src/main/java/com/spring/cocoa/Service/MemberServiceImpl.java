package com.spring.cocoa.Service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.cocoa.DAO.MemberDAO;
import com.spring.cocoa.VO.MemberVO;
import com.spring.cocoa.VO.RegisterRequest;
import com.spring.cocoa.exception.AlreadyExistingEmailException;
import com.spring.cocoa.exception.AlreadyExistingIdException;



@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Resource(name="memberDAO")
	private MemberDAO memberDAO;

	@Override
    public void register(RegisterRequest regReq) throws Exception {
        MemberVO mem_mail = memberDAO.selectByEmail(regReq.getMem_mail());
        if(mem_mail!=null) {
            throw new AlreadyExistingEmailException(regReq.getMem_mail()+" is duplicate email.");
        }
        MemberVO mem_id = memberDAO.selectById(regReq.getMem_id());
        if(mem_id!=null) {
            throw new AlreadyExistingIdException(regReq.getMem_id()+" is duplicate id.");
        }
        memberDAO.insertUser(regReq);
    }


	
}
