package community;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommunityServiceImpl implements CommunitySerive {
	@Autowired
	private CommunityDAO dao;

	@Override
	public CommunityPageVO community_list(CommunityPageVO page) {
		return dao.community_list(page);
	}

	@Override
	public CommunityVO community_detail(int no) {
		return dao.community_detail(no);
	}

	@Override
	public void community_read(int no) {
		dao.community_read(no);
	}
	
	@Override
	public void community_good(int no) {
		dao.community_good(no);
	}

	@Override
	public void community_delete(int no) {
		dao.community_delete(no);
	}

	@Override
	public void community_insert(CommunityVO vo) {
		dao.community_insert(vo);

	}

	@Override
	public void community_update(CommunityVO vo) {
		dao.community_update(vo);
	}

	@Override
	public List<CommentVO> community_comment_list(int pid) {
		return dao.community_comment_list(pid);
	}

	@Override
	public boolean community_comment_insert(HashMap<String, Object> map) {
		return dao.community_comment_insert(map);
	}

	@Override
	public boolean community_comment_update(CommentVO vo) {
		return dao.community_comment_update(vo);
	}

	@Override
	public boolean community_comment_delete(int id) {
		return dao.community_comment_delete(id);
	}

}
