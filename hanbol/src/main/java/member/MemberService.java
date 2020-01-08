package member;

public interface MemberService {
	//CRUD
	MemberVO member_login(String id, String pwd); //로그인
	boolean id_usable(String id);//아이디중복확인
	boolean nick_usable(String nickname);//닉네임중복확인
	boolean member_insert(MemberVO vo);//회원가입
	MemberVO member_select(String id); //내정보보기
	boolean member_update(MemberVO vo); //내정보변경
	boolean member_delete(); //회원탈퇴
}
