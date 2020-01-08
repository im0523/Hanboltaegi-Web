package mypage;

import community.CommunityPageVO;
import member.MemberVO;
import recipe.RecipePageVO;

public interface MypageService {
	//CRUD
	
	//내 활동내역
	CommunityPageVO activity_list(CommunityPageVO cpage);
	
	//스크랩한 레시피 지우기
	void scrap_delete(String scr_id);
	
	//스크랩한 레시피 목록
	ScrapPageVO scrap_list(ScrapPageVO spage);
	
	//내가 올린 레시피 목록
	RecipePageVO myrecipe_list(RecipePageVO rpage);
	
	//1:1 문의 삭제
	void inquiry_delete(int id);
	
	//1:1 문의 글쓰기
	void inquiry_insert(InquiryVO vo);
	
	//1:1 문의 조회수
	void inquiry_read(int id);
	
	//1:1 문의 상세화면
	InquiryVO inquiry_deatail(int id);
	
	//1:1 문의 목록
	InquiryPageVO inquiry_list(InquiryPageVO page);
	
	//회원정보 수정
	boolean mypage_update(MemberVO vo);
	
	//삭제(탈퇴)
	void mypage_delete(String id);

	
	
}
