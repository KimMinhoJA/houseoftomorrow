package hot.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import hot.member.domain.Member;
import hot.member.repository.MemberRepository;
import hot.member.repository.MemberRoleRepository;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberRepository memberRep;
	
	@Autowired
	private MemberRoleRepository memberRoleRep;
	
	private PasswordEncoder encoder = new BCryptPasswordEncoder();
	
	@Override
	public int memberInsert(Member member) {
		member.setMemberPwd(encoder.encode(member.getMemberPwd()));
		member.setMemberRole(memberRoleRep.getOne(member.getMemberRole().getMemberRoleNo()));
		memberRep.save(member);
		return 0;
	}
	
	@Override
	public Member selectMember(String memberId) {
		Member member = memberRep.findByMemberId(memberId);
		return member;
	}

	@Override
	public int memberUpdate(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int memberDelete(int memberNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String findId(String phoneNumber, String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String findPwd(Member member) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
