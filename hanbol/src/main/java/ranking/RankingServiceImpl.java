package ranking;

import java.util.List;

import javax.swing.text.StyledEditorKit.BoldAction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RankingServiceImpl implements RankingService{

	@Autowired private RankingDAO dao;
	

	@Override
	public List<RankingVO> ranking_list() {
		return dao.ranking_list();
	}
	
	@Override
	public List<RankingVO> mypage_follow_list(String id) {
		System.out.println(id);
		return dao.mypage_follow_list(id);
	}
	
	@Override
	public List<RankingVO> ranking_follow_list(String id) {
		return dao.ranking_follow_list(id);
	}

	@Override
	public List<RankingVO> ranking_detail(String id) {
		return dao.ranking_detail(id);
	}

	@Override
	public RankingVO ranking_review(String id) {
		return dao.ranking_review(id);
	}


	@Override
	public RankingVO ranking_detail2(String id) {
		return dao.ranking_detail2(id);
	}

	@Override
	public List<RankingVO> ranking_comment2(String id) {
		return dao.ranking_comment2(id);
	}

	@Override
	public void ranking_follow_insert(RankingVO vo) {
		dao.ranking_follow_insert(vo);
	}

	@Override
	public void ranking_following(String id) {
		dao.ranking_following(id);
	}

	@Override
	public void ranking_follower(String target_id) {
		dao.ranking_follower(target_id);
	}

	@Override
	public List<RankingVO> ranking_talklist(String id) {
		return dao.ranking_talklist(id);
	}

	@Override
	public boolean follow_select(RankingVO vo) {
		return dao.follow_select(vo);
	}

	@Override
	public void ranking_unfollowing(String id) {
		dao.ranking_unfollowing(id);
	}

	@Override
	public void ranking_unfollower(String target_id) {
		dao.ranking_unfollower(target_id);
	}

	@Override
	public void ranking_follow_delete(RankingVO vo) {
		dao.ranking_follow_delete(vo);
	}


}
