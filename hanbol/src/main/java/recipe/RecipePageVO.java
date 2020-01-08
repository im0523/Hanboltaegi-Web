package recipe;

import java.util.List;

import org.springframework.stereotype.Component;

import common.PageVO;

@Component
public class RecipePageVO extends PageVO {
	private List<RecipeVO> list;
	private String userid;
	
	private String cat_nm;
	private String cat_val;



	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public List<RecipeVO> getList() {
		return list;
	}

	public void setList(List<RecipeVO> list) {
		this.list = list;
	}

	public String getCat_nm() {
		return cat_nm;
	}

	public void setCat_nm(String cat_nm) {
		this.cat_nm = cat_nm;
	}

	public String getCat_val() {
		return cat_val;
	}

	public void setCat_val(String cat_val) {
		this.cat_val = cat_val;
	}

}
