package member;

public interface MemberService {
	//CRUD
	MemberVO member_login(String id, String pwd); //�α���
	boolean id_usable(String id);//���̵��ߺ�Ȯ��
	boolean nick_usable(String nickname);//�г����ߺ�Ȯ��
	boolean member_insert(MemberVO vo);//ȸ������
	MemberVO member_select(String id); //����������
	boolean member_update(MemberVO vo); //����������
	boolean member_delete(); //ȸ��Ż��
}
