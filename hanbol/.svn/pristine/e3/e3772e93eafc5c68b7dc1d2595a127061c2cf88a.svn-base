package ranking;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class RankingDAO implements RankingService{
	
	@Autowired @Qualifier("first") private SqlSession sql;

	@Override
	public List<RankingVO> ranking_list() {
		return sql.selectList("ranking.mapper.list");
		//return null;
	}
	
	@Override
	public List<RankingVO> mypage_follow_list(String id) {
		return sql.selectList("ranking.mapper.mypage_follow_list",id);
	}
	
	@Override
	public List<RankingVO> ranking_follow_list(String id) {
		return sql.selectList("ranking.mapper.follow_list",id);
	}

	@Override
	public List<RankingVO> ranking_detail(String id) {
		return sql.selectList("ranking.mapper.detail",id);
	}

	@Override
	public RankingVO ranking_review(String id) {
		return sql.selectOne("ranking.mapper.review",id);
	}

	@Override
	public RankingVO ranking_detail2(String id) {
		return sql.selectOne("ranking.mapper.detail2",id);
	}

	@Override
	public List<RankingVO> ranking_comment2(String id) {
		return sql.selectList("ranking.mapper.comment2",id);
	}

	@Override
	public void ranking_follow_insert(RankingVO vo) {
		sql.insert("ranking.mapper.follow_insert",vo);
	}

	@Override
	public void ranking_following(String id) {
		System.out.println(id);
		sql.update("ranking.mapper.following",id);
	}

	@Override
	public void ranking_follower(String id) {
		sql.update("ranking.mapper.follower",id);
	}

	@Override
	public List<RankingVO> ranking_talklist(String id) {
		return sql.selectList("ranking.mapper.talk",id);
	}

	@Override
	public boolean follow_select(RankingVO vo) {
		return (Integer)sql.selectOne("ranking.mapper.follow_select",vo) > 0 ? true : false;
	}

	@Override
	public void ranking_unfollowing(String id) {
		sql.update("ranking.mapper.unfollowing",id);
	}

	@Override
	public void ranking_unfollower(String id) {
		sql.update("ranking.mapper.unfollower",id);
	}

	@Override
	public void ranking_follow_delete(RankingVO vo) {
		sql.delete("follow_delete",vo);
	}



}
