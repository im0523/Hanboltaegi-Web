package com.hanbol.first;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import common.CommonService;
import community.CommunityPageVO;
import community.CommunityServiceImpl;
import community.CommunityVO;
import member.MemberVO;
import ranking.RankingPageVO;
import ranking.RankingServiceImpl;
import ranking.RankingVO;

@Controller
public class RankingController {

	@Autowired private RankingServiceImpl service;
	
	@RequestMapping("/home.rk")
	public String home(Model model) {
		return "ranking/home";
	}
	
	
	//Rank MainPage
	@RequestMapping("/list.rk")
	public String list(String id,Model model,RankingVO vo) {
		model.addAttribute( "list", service.ranking_list() );
		model.addAttribute("fol_list",service.ranking_follow_list(id) );
		return "ranking/list";
	}
	
	//follower page
	@ResponseBody
	@RequestMapping(value = "/follow", produces = "text/html; charset=utf-8")
	public String follow(String id,String target_id,RankingVO vo,Model model) {
		System.out.println(id + ", " + target_id);
		StringBuffer msg = new StringBuffer("<script type='text/javascript'>");
		
		if( service.follow_select(vo) == true ) {
			service.ranking_unfollowing(id);
			service.ranking_unfollower(target_id);
			service.ranking_follow_delete(vo);
			//msg.append("location='list.rk?id=" + target_id+"' ");
			msg.append("alert('" + id + "님을 소식받기에서 해제했습니다.'); location='list.rk?id=" + target_id+"' ");
			msg.append("</script>");
		}else {
			service.ranking_following(id);
			service.ranking_follower(target_id);
			service.ranking_follow_insert(vo);
			//msg.append("location='list.rk?id=" + target_id+"' ");
			msg.append("alert('" + id + "님을 소식받기에 추가했습니다.'); location='list.rk?id=" + target_id+"' ");
			msg.append("</script>");
		}
		return msg.toString();
	}
	
	//Rank write 
	@RequestMapping("/detail.rk")
	public String detail(Model model, String id) {
		model.addAttribute("list2", service.ranking_detail2(id) );
		model.addAttribute("list", service.ranking_detail(id) );
		return "ranking/detail";
	}

	@Autowired private CommunityServiceImpl service2;
	
	//Rank write 
	@RequestMapping("/talk.rk")
	public String talk(Model model,String id) {
		model.addAttribute("list", service.ranking_talklist(id));
		model.addAttribute("vo", service.ranking_detail2(id) );
		model.addAttribute("crlf", "\r\n");
		return "ranking/talk";
	}
	
	//Rank write 
	@RequestMapping("/recipe_comment.rk")
	public String comment(Model model, String id) {
		model.addAttribute("vo", service.ranking_detail2(id) );
		System.out.println(id);
		model.addAttribute("list", service.ranking_comment2(id) );
		return "ranking/comment";
	}
	
	
	@RequestMapping("/comm.rk")
	public String comm() {
		return "ranking/comm";
	}
}
