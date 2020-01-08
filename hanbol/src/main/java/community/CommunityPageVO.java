package community;

import java.util.List;

import org.springframework.stereotype.Component;

import common.PageVO;

@Component
public class CommunityPageVO extends PageVO {
	private List<CommunityVO> list;
	private String userid;

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public List<CommunityVO> getList() {
		return list;
	}

	public void setList(List<CommunityVO> list) {
		this.list = list;
	}
	
}
