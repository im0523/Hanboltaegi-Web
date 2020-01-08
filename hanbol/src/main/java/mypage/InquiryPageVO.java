package mypage;

import java.util.List;

import org.springframework.stereotype.Component;

import common.PageVO;

@Component
public class InquiryPageVO extends PageVO {

	private List<InquiryVO> list;
	private String userid;
	

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public List<InquiryVO> getList() {
		return list;
	}

	public void setList(List<InquiryVO> list) {
		this.list = list;
	}
	
	
	
}
