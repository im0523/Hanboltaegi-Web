package member;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO implements MemberService {
	
	@Autowired @Qualifier("first") private SqlSession sql;

	@Override
	public boolean member_delete() {
		return false;
	}

	

	

	@Override
	public boolean member_update(MemberVO vo) {
		return false;
	}

	
	@Override
	public MemberVO member_select(String userid) {
		return null;
	}
	
	//회원가입
	@Override
	public boolean member_insert(MemberVO vo) {
		return sql.insert("member.mapper.join", vo) > 0 ? true : false;
	}
	
	//닉네임 중복확인
	@Override
	public boolean nick_usable(String nickname) {
		return (Integer)sql.selectOne("member.mapper.usablenick", nickname) == 1 ? false : true;
	}

	//아이디 중복확인
	@Override
	public boolean id_usable(String id) {
		return (Integer)sql.selectOne("member.mapper.usableid", id) == 1 ? false : true;
	}
	
	//로그인
	@Override
	public MemberVO member_login(String id, String pwd) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		return sql.selectOne("member.mapper.login", map);
	}


	
	
	
}






























