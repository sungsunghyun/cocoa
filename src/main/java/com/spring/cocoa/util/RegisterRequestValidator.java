package com.spring.cocoa.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.spring.cocoa.VO.RegisterRequest;

public class RegisterRequestValidator implements Validator{
    
	private static final String emailRegExp =
            "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" +
            "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    private Pattern pattern;
 
    public RegisterRequestValidator() {
        pattern = Pattern.compile(emailRegExp);
    }
 
    @Override
    public boolean supports(Class<?> clazz) {
        return RegisterRequest.class.isAssignableFrom(clazz);
    }
 
    @Override
    public void validate(Object target, Errors errors) {
        RegisterRequest regReq = (RegisterRequest) target;
        
        if(regReq.getMem_mail() == null || regReq.getMem_mail().trim().isEmpty()) {
            errors.rejectValue("mem_mail", "required", "이메일은 필수 정보 입니다.");
        } else {
            Matcher matcher = pattern.matcher(regReq.getMem_mail());
            if(!matcher.matches()) {
                errors.rejectValue("mem_mail", "bad", "올바르지 않는 이메일 형식입니다.");
            }
        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mem_name", "required", "이름은 필수 정보 입니다.");
        ValidationUtils.rejectIfEmpty(errors, "mem_pass", "required", "비밀번호는 필수 정보 입니다.");
        ValidationUtils.rejectIfEmpty(errors, "mem_passchk", "required", "비밀번호는 필수 정보 입니다.");
        if(!regReq.getMem_pass().isEmpty()) {
            if(!regReq.isPwEqualToCheckPw()) {
                errors.rejectValue("mem_passchk", "nomatch", "비밀번호가 일치하지 않습니다.");
            }
        }
    }

}
