package recipe;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import community.CommentVO;
import mypage.ScrapVO;

@Service
public class RecipeServiceImpl implements RecipeService {
	@Autowired private RecipeDAO dao;
	
	@Override
	public void recipe_insert(RecipeVO vo) {
		dao.recipe_insert(vo);
	}

	@Override
	public RecipePageVO recipe_list(RecipePageVO page) {
		return dao.recipe_list(page);
	}

	@Override
	public RecipeVO recipe_detail(String recipe_id) {
		return dao.recipe_detail(recipe_id);
	}

	@Override
	public void recipe_read(String recipe_id) {
		dao.recipe_read(recipe_id);
	}

	@Override
	public void recipe_update(RecipeVO vo) {
		dao.recipe_update(vo);
	}

	@Override
	public void recipe_delete(String recipe_id) {
		dao.recipe_delete(recipe_id);
	}

	@Override
	public void recipe_good(String recipe_id) {
		dao.recipe_good(recipe_id);
	}

	@Override
	public void recipe_scrap(ScrapVO vo, String recipe_id, String userid) {
		dao.recipe_scrap(vo, recipe_id, userid);
	}

	@Override
	public List<CommentVO> recipe_comment_list(String rc_id) {
		return dao.recipe_comment_list(rc_id);
	}

	@Override
	public boolean recipe_comment_insert(HashMap<String, Object> map) {
		return dao.recipe_comment_insert(map);
	}

	@Override
	public boolean recipe_comment_update(RecipeCommentVO vo) {
		return dao.recipe_comment_update(vo);
	}

	@Override
	public boolean recipe_comment_delete(int no) {
		return dao.recipe_comment_delete(no);
	}



}
