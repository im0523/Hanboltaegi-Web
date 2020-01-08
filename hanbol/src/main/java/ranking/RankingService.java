package ranking;

import java.util.List;


public interface RankingService {
	//CRUD (Create/Read/Update/Delete)
	//신규저장
	void ranking_follow_insert(RankingVO vo);
	
	//목록조회	
	List<RankingVO> ranking_list();
	List<RankingVO> mypage_follow_list(String id);
	List<RankingVO> ranking_follow_list(String id);
	List<RankingVO> ranking_talklist(String id);
	boolean follow_select(RankingVO vo);
	//상세조회
	List<RankingVO> ranking_detail(String id);
	RankingVO ranking_detail2(String id);
	RankingVO ranking_review(String id);
	List<RankingVO> ranking_comment2(String id);
	
	//변경저장
	void ranking_following(String id);
	void ranking_follower(String id);
	void ranking_unfollowing(String id);
	void ranking_unfollower(String id);
	//삭제
	void ranking_follow_delete(RankingVO vo);

}
