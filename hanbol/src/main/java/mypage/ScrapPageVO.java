package mypage;

import java.util.List;

import org.springframework.stereotype.Component;

import common.PageVO;

@Component
public class ScrapPageVO extends PageVO {

	private List<ScrapVO> list;
	private String userid;
	
	public List<ScrapVO> getList() {
		return list;
	}
	public void setList(List<ScrapVO> list) {
		this.list = list;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	


	
	
	
}
