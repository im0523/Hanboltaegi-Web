package member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

//@Service @Qualifier("member.service")
@Service("member.service")
public class MemberServiceImpl implements MemberService {
	
	@Autowired private MemberDAO dao;

	@Override
	public boolean member_delete() {
		return false;
	}
	

	@Override
	public MemberVO member_select(String userid) {
		return null;
	}

	

	@Override
	public boolean member_update(MemberVO vo) {
		return false;
	}
	
	//ȸ������
	@Override
	public boolean member_insert(MemberVO vo) {
		return dao.member_insert(vo);
	}

	//�г��� �ߺ�Ȯ�� 
	@Override
	public boolean nick_usable(String nickname) {
		return dao.nick_usable(nickname);
	}

	//���̵� �ߺ�Ȯ��
	@Override
	public boolean id_usable(String id) {
		return dao.id_usable(id);
	}

	//�α���
	@Override
	public MemberVO member_login(String id, String pwd) {
		return dao.member_login(id, pwd);
	}

	
	
}
