package recipe;

import java.util.HashMap;
import java.util.List;

import community.CommentVO;
import mypage.ScrapVO;

public interface RecipeService {
	//CRUD
	void recipe_scrap(ScrapVO vo, String recipe_id, String userid);
	void recipe_good(String recipe_id);
	void recipe_insert(RecipeVO vo);
	RecipePageVO recipe_list(RecipePageVO page);
	RecipeVO recipe_detail(String recipe_id);
	void recipe_read(String id);
	void recipe_update(RecipeVO vo);
	void recipe_delete(String recipe_id);
	
	//Comment CRUD
	List<CommentVO> recipe_comment_list(String rc_id);
	boolean recipe_comment_insert(HashMap<String, Object> map);
	boolean recipe_comment_update(RecipeCommentVO vo);
	boolean recipe_comment_delete(int no);
}
