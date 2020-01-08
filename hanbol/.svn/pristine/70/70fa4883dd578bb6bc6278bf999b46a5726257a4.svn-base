package mypage;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import community.CommunityPageVO;
import community.CommunityVO;
import member.MemberVO;
import recipe.RecipePageVO;
import recipe.RecipeVO;

@Repository
public class MypageDAO implements MypageService {
	
	@Autowired @Qualifier("first") private SqlSession sql;



	@Override
	public void mypage_delete(String id) {
		sql.delete("mypage.mapper.delete", id);
	}



	@Override
	public boolean mypage_update(MemberVO vo) {
		return sql.update("mypage.mapper.update", vo) > 0 ? true : false;
	}



	@Override
	public InquiryPageVO inquiry_list(InquiryPageVO page) {
		page.setTotalList(
				(Integer)sql.selectOne("mypage.mapper.totalCount", page) );
			List<InquiryVO> list = sql.selectList("mypage.mapper.list", page);
			page.setList(list);
			return page;
	}



	@Override
	public InquiryVO inquiry_deatail(int id) {
		return sql.selectOne("mypage.mapper.inquirydetail", id);
	}



	@Override
	public void inquiry_read(int id) {
		sql.update("mypage.mapper.read", id);
	}



	@Override
	public void inquiry_insert(InquiryVO vo) {
		sql.insert("mypage.mapper.insert", vo);
	}



	@Override
	public RecipePageVO myrecipe_list(RecipePageVO rpage) {
		rpage.setTotalList(
				(Integer)sql.selectOne("mypage.mapper.totalCount", rpage) );
			List<RecipeVO> list = sql.selectList("mypage.mapper.mylist", rpage);
			rpage.setList(list);
		return rpage;
	}



	@Override
	public ScrapPageVO scrap_list(ScrapPageVO spage) {
		spage.setTotalList(
				(Integer)sql.selectOne("mypage.mapper.totalCount", spage) );
			List<ScrapVO> list = sql.selectList("mypage.mapper.scraplist", spage);
			spage.setList(list);
		return spage;
	}



	@Override
	public CommunityPageVO activity_list(CommunityPageVO cpage) {
		cpage.setTotalList(
				(Integer)sql.selectOne("mypage.mapper.ctotalCount", cpage) );
			List<CommunityVO> list = sql.selectList("mypage.mapper.activitylist", cpage);
			cpage.setList(list);
		return cpage;
	}



	@Override
	public void inquiry_delete(int id) {
		sql.delete("mypage.mapper.inquirydelete", id);
	}



	@Override
	public void scrap_delete(String scr_id) {
		sql.delete("mypage.mapper.scrapdelete", scr_id);
	}



	

	


	
}






























