package com.hanbol.first;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import common.CommonService;
import community.CommunityPageVO;
import community.CommunityServiceImpl;
import member.MemberVO;
import mypage.InquiryPageVO;
import mypage.InquiryVO;
import mypage.MypageService;
import mypage.MypageServiceImpl;
import mypage.ScrapPageVO;
import mypage.ScrapVO;
import ranking.RankingServiceImpl;
import ranking.RankingVO;
import recipe.RecipePageVO;

@Controller
public class MypageController {

	@Resource(name = "mypage.service") private MypageService service;
	@Autowired private MypageServiceImpl service2;
	@Autowired private InquiryPageVO page;
	@Autowired private RecipePageVO rpage;
	@Autowired private ScrapPageVO spage;
	@Autowired private CommunityPageVO cpage; 
	@Autowired private CommonService common;
	@Autowired private RankingServiceImpl service3;
	
	//팔로우 화면
	@RequestMapping("/follow.my")
	public String follow(Model model,RankingVO vo,HttpSession ss) {
		vo.setUserid( ( (MemberVO) ss.getAttribute("login_info") ).getId() );
		model.addAttribute( "list",service3.mypage_follow_list( vo.getUserid() ) );
		return "mypage/follow";
	}
	
	//1:1 문의 글쓰기 삭제
	@RequestMapping("/delete.my")
	public String inquiry_delete(int id) {
		service.inquiry_delete(id);
		return "redirect:inquiry.my";
	}
	
	//1:1 문의 글쓰기 저장
	@RequestMapping("/insert.my")
	public String insert(InquiryVO vo, MultipartFile file, HttpSession ss) {
		// 첨부파일이 있는 경우
		if (file.getSize() > 0) {
			vo.setFilename(file.getOriginalFilename());
			vo.setFilepath(common.fileUpload(file, ss, "inquiry"));
		}
		vo.setUserid(((MemberVO) ss.getAttribute("login_info")).getId());
		vo.setNickname(((MemberVO) ss.getAttribute("login_info")).getNickname());
		service2.inquiry_insert(vo);
		return "redirect:inquiry.my";
	}
	
	//1:1 문의 글쓰기 화면
	@RequestMapping("/new.my")
	public String mypage_new() {
		return "mypage/new";
	}
	
	//1:1 문의 상세화면
	@RequestMapping("/inquirydetail.my")
	public String mypage_inquirydetail(int id, Model model) {
		model.addAttribute("crlf", "\r\n");
		model.addAttribute("lf", "\n");
		
		service2.inquiry_read(id);
		model.addAttribute("page", page);
		model.addAttribute("vo", service2.inquiry_deatail(id));
		return "mypage/inquirydetail";
	}
	
	//1:1 문의
	@RequestMapping("/inquiry.my")
	public String mypage_inquiry(MemberVO v, HttpSession ss, Model model,  @RequestParam(defaultValue = "1") int curPage) {
		page.setUserid( ((MemberVO) ss.getAttribute("login_info")).getId() );
		page.setCurPage(curPage);
		
		model.addAttribute("page", service.inquiry_list(page));
		return "mypage/inquiry";
	}
	
	//내 활동내역
	@RequestMapping("/activity.my")
	public String mypage_activity(Model model, @RequestParam(defaultValue = "1") int curPage, HttpSession ss) {
		cpage.setCurPage(curPage);
		cpage.setUserid(( (MemberVO) ss.getAttribute("login_info") ).getId());

		model.addAttribute("cpage", service2.activity_list(cpage));
		model.addAttribute("crlf", "\r\n");
		return "mypage/activity";
	}
	
	//스크랩한 레시피 삭제
	@RequestMapping("/scrapdelete.my")
	public String scrapdelete(String scr_id) {
		service.scrap_delete(scr_id);
		return "redirect:scraprecipe.my";
	}
	
	//스크랩한 레시피
	@RequestMapping("/scraprecipe.my")
	public String mypage_scraprecipe(HttpSession ss, Model model) {
		spage.setUserid( ( (MemberVO) ss.getAttribute("login_info") ).getId() );
		model.addAttribute("spage", service.scrap_list(spage));
		return "mypage/scraprecipe";
	}
	
	//내가 올린 레시피
	@RequestMapping("/myrecipe.my")
	public String mypage_myrecipe(HttpSession ss, Model model) {
		rpage.setUserid( ( (MemberVO) ss.getAttribute("login_info") ).getId() );
		
		model.addAttribute("rpage", service.myrecipe_list(rpage));
		return "mypage/myrecipe";
	}
	
	//내 정보 수정 요청
	@ResponseBody @RequestMapping(value="/update", produces="text/html; charset=utf-8")
	public String update(MemberVO vo, HttpServletRequest request, HttpSession ss, MultipartFile file, int delete) {
		vo.setId(((MemberVO) ss.getAttribute("login_info")).getId());
		StringBuffer msg = new StringBuffer("<script type='text/javascript'>");
		String uuid = ss.getServletContext().getRealPath("resources") + vo.getUser_pic();
		
		if( file.getSize()>0 ) {
			//파일을 첨부하는 경우
			vo.setUser_picname( file.getOriginalFilename() );
			vo.setUser_pic( common.fileUpload(file, ss, "mypage"));
			//원래 첨부된 파일을 바꿔 첨부하는 경우
			//원래 첨부된 파일을 삭제한다.
			File f = new File( uuid );
			if( f.exists() ) f.delete();
			
		}else {
			//파일첨부하지 않는 경우		
			if( delete != 1 ) {
				//1.원래 첨부된 파일을 그대로 사용하는 경우
				vo.setUser_picname( vo.getUser_picname() );
				vo.setUser_pic( vo.getUser_pic() );
			}else {
				//2.원래 첨부된 파일을 삭제하는 경우
				//원래 첨부된 파일을 삭제한다.
				File f = new File( uuid );
				if( f.exists() ) f.delete();
			}
		}
		
		if (service.mypage_update(vo)) {
			msg.append("alert('회원정보 수정 완료'); location='detail.my'");
		}else {
			msg.append("alert('회원정보 수정 실패'); history.go(-1)");
		}
		msg.append("</script>");
		
		return msg.toString();
	}
	
	//내 정보
	@RequestMapping("/detail.my")
	public String mypage_detail() {
		return "mypage/detail";
	}
	
	//마이 페이지
	@RequestMapping("/main.my")
	public String mypage() {
		return "mypage/main";
	}
	
	
}
