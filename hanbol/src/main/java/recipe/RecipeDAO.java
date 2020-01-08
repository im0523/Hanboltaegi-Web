package recipe;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import community.CommentVO;
import mypage.ScrapVO;

@Repository
public class RecipeDAO implements RecipeService {
	@Autowired private SqlSession sql;
	
	@Override
	public void recipe_insert(RecipeVO vo) {
		sql.insert("recipe.mapper.rec_insert", vo);
		sql.insert("recipe.mapper.mat_insert", vo);
		sql.insert("recipe.mapper.pic_insert", vo);
		sql.insert("recipe.mapper.text_insert", vo);
	}

	@Override
	public RecipePageVO recipe_list(RecipePageVO page) {
		page.setTotalList( (Integer)sql.selectOne("recipe.mapper.totalCount", page) );
		List<RecipeVO> list = sql.selectList("recipe.mapper.list", page);
		page.setList(list);
		return page;
	}

	@Override
	public RecipeVO recipe_detail(String recipe_id) {
		return sql.selectOne("recipe.mapper.detail", recipe_id);
	}

	@Override
	public void recipe_read(String recipe_id) {
		sql.update("recipe.mapper.read", recipe_id);
	}

	@Override
	public void recipe_update(RecipeVO vo) {
		sql.update("recipe.mapper.rec_update", vo);
		sql.update("recipe.mapper.mat_update", vo);
		sql.update("recipe.mapper.pic_update", vo);
		sql.update("recipe.mapper.text_update", vo);
	}

	@Override
	public void recipe_delete(String recipe_id) {
		sql.delete("recipe.mapper.delete", recipe_id);
	}

	@Override
	public void recipe_good(String recipe_id) {
		sql.update("recipe.mapper.good", recipe_id);
	}

	@Override
	public void recipe_scrap(ScrapVO vo, String recipe_id, String userid) {
		sql.insert("recipe.mapper.scrap", vo);
	}

	@Override
	public List<CommentVO> recipe_comment_list(String rc_id) {
		return sql.selectList("recipe.mapper.comment_list", rc_id);
	}

	@Override
	public boolean recipe_comment_insert(HashMap<String, Object> map) {
		return sql.insert("recipe.mapper.comment_insert", map) > 0 ? true : false;
	}

	@Override
	public boolean recipe_comment_update(RecipeCommentVO vo) {
		return sql.update("recipe.mapper.comment_update", vo) > 0 ? true : false;
	}

	@Override
	public boolean recipe_comment_delete(int no) {
		return sql.delete("recipe.mapper.comment_delete", no) > 0 ? true : false;
	}



}
