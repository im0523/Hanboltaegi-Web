package community;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class CommunityDAO implements CommunitySerive {

	@Autowired
	@Qualifier("first")
	private SqlSession sql;

	@Override
	public CommunityPageVO community_list(CommunityPageVO page) {
		page.setTotalList((Integer) sql.selectOne("community.mapper.totalCount", page));
		List<CommunityVO> list = sql.selectList("community.mapper.list", page);
		page.setList(list);
		return page;
	}

	@Override
	public CommunityVO community_detail(int no) {
		return sql.selectOne("community.mapper.detail", no);
	}

	@Override
	public void community_read(int no) {
		sql.update("community.mapper.read", no);

	}
	
	@Override
	public void community_good(int no) {
		sql.update("community.mapper.good", no);

	}

	public void community_delete(int no) {
		sql.delete("community.mapper.delete", no);

	}

	@Override
	public void community_insert(CommunityVO vo) {
		sql.insert("community.mapper.insert", vo);
	}

	@Override
	public void community_update(CommunityVO vo) {
		sql.update("community.mapper.update", vo);
	}

	@Override
	public List<CommentVO> community_comment_list(int pid) {
		return sql.selectList("community.mapper.comment_list", pid);
	}

	@Override
	public boolean community_comment_insert(HashMap<String, Object> map) {
		return sql.insert("community.mapper.comment_insert", 
				map) > 0 ? true : false;
	}

	@Override
	public boolean community_comment_update(CommentVO vo) {
		return sql.update("community.mapper.comment_update", vo)>0 ? true : false;
	}

	@Override
	public boolean community_comment_delete(int id) {
		return sql.delete("community.mapper.comment_delete", id)>0 ? true : false;
	}

}
