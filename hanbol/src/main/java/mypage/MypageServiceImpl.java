package mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import community.CommunityPageVO;
import member.MemberVO;
import recipe.RecipePageVO;

//@Service @Qualifier("member.service")
@Service("mypage.service")
public class MypageServiceImpl implements MypageService {
	
	@Autowired private MypageDAO dao;



	@Override
	public void mypage_delete(String id) {
		dao.mypage_delete(id);
	}



	@Override
	public boolean mypage_update(MemberVO vo) {
		return dao.mypage_update(vo);
	}



	@Override
	public InquiryPageVO inquiry_list(InquiryPageVO page) {
		return dao.inquiry_list(page);
	}



	@Override
	public InquiryVO inquiry_deatail(int id) {
		return dao.inquiry_deatail(id);
	}



	@Override
	public void inquiry_read(int id) {
		dao.inquiry_read(id);
	}



	@Override
	public void inquiry_insert(InquiryVO vo) {
		dao.inquiry_insert(vo);
	}



	@Override
	public RecipePageVO myrecipe_list(RecipePageVO rpage) {
		return dao.myrecipe_list(rpage);
	}



	@Override
	public ScrapPageVO scrap_list(ScrapPageVO spage) {
		return dao.scrap_list(spage);
	}



	@Override
	public CommunityPageVO activity_list(CommunityPageVO cpage) {
		return dao.activity_list(cpage);
	}



	@Override
	public void inquiry_delete(int id) {
		dao.inquiry_delete(id);
	}



	@Override
	public void scrap_delete(String scr_id) {
		dao.scrap_delete(scr_id);
	}






	
	
}
