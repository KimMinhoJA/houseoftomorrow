package hot.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import hot.member.domain.Member;
import hot.member.domain.MemberRole;
import hot.member.repository.MemberRoleRepository;
import hot.member.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@Autowired
	MemberRoleRepository memberRoleRepository;
	
	/**
	 * 회원가입 폼으로
	 */
	@RequestMapping("/memberSignup")
	public String signupForm() {
		return "manage/guest/memberJoinForm";
	}
	
	/**
	 * 회원가입
	 */
	@PostMapping("/signup")
	public String memberInsert(Member member, String domain, String domainAuto, MemberRole role) {
		if(domain == null || domain.equals("")) {
			member.setMemberId(member.getMemberId() + "@" + domainAuto);
		}else {
			member.setMemberId(member.getMemberId() + "@" + domain);
		}
		member.setMemberRole(role);
		memberService.memberInsert(member);
		
		return "common/loginForm";
	}
	
	/**
	 * 아이디 중복 체크
	 */
	@ResponseBody
	@RequestMapping("/idCheck")
	public String dupCheck(String memberId, String domain, String domainAuto) {
		String fullId = memberId + "@";
		if(domain == null || domain.equals("")) {
			fullId += domainAuto;
		}else {
			fullId += domain;
		}
		Member member = memberService.selectMember(fullId);
		if(member == null) {
			return "possible";
		}else {
			return "impossible";
		}
	}

	@RequestMapping("/")
	public void url() {
		
	}
	
	@RequestMapping("/update")
	public String memberUpdate(Member member) {
		PasswordEncoder encoder = new BCryptPasswordEncoder();
		System.out.println(member);
		member = new Member(null, "memberId", encoder.encode("1234"), "memberName", "memberPhone", null, memberRoleRepository.findById(1).orElse(null));
		memberService.memberUpdate(member);
	return "index";
	}
}
