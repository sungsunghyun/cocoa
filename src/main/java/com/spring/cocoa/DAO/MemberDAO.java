package com.spring.cocoa.DAO;

import org.springframework.stereotype.Repository;

import com.spring.cocoa.VO.MemberVO;
import com.spring.cocoa.VO.RegisterRequest;

@Repository("memberDAO")
public class MemberDAO extends AbstractDAO {
	
	   public MemberVO selectByEmail(String mem_mail) {
	        return (MemberVO)selectOne("member.selectByEmail", mem_mail);
	    }
	 
	    public MemberVO selectById(String mem_id) {
	        return (MemberVO)selectOne("member.selectById", mem_id);
	    }
	 
	    public void insertUser(RegisterRequest regReq) {
	        insert("member.register", regReq);
	    }

}
