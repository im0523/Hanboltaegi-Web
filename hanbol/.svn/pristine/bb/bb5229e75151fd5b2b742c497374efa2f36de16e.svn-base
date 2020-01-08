package community;

import java.util.HashMap;
import java.util.List;

public interface CommunitySerive {

	CommunityPageVO community_list(CommunityPageVO page);

	CommunityVO community_detail(int no);

	void community_read(int no);
	
	void community_good(int no);

	void community_delete(int no);

	void community_insert(CommunityVO vo);

	void community_update(CommunityVO vo);

	List<CommentVO> community_comment_list(int pid);

	boolean community_comment_insert(HashMap<String, Object> map);

	boolean community_comment_update(CommentVO vo);

	boolean community_comment_delete(int id);
}
