package hot.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignupController {
	@RequestMapping("/conSignup")
	public String conSignup() {
		return "member/construcor_signupform";
	}
	
	@RequestMapping("/test")
	public String test() {
		return "/member/test";
	}
	
	@RequestMapping("/logintest")
	public String logintest() {
		return "/estimate/member/requestForm";
	}
}
