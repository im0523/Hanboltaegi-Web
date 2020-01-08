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
	
	//�ȷο� ȭ��
	@RequestMapping("/follow.my")
	public String follow(Model model,RankingVO vo,HttpSession ss) {
		vo.setUserid( ( (MemberVO) ss.getAttribute("login_info") ).getId() );
		model.addAttribute( "list",service3.mypage_follow_list( vo.getUserid() ) );
		return "mypage/follow";
	}
	
	//1:1 ���� �۾��� ����
	@RequestMapping("/delete.my")
	public String inquiry_delete(int id) {
		service.inquiry_delete(id);
		return "redirect:inquiry.my";
	}
	
	//1:1 ���� �۾��� ����
	@RequestMapping("/insert.my")
	public String insert(InquiryVO vo, MultipartFile file, HttpSession ss) {
		// ÷�������� �ִ� ���
		if (file.getSize() > 0) {
			vo.setFilename(file.getOriginalFilename());
			vo.setFilepath(common.fileUpload(file, ss, "inquiry"));
		}
		vo.setUserid(((MemberVO) ss.getAttribute("login_info")).getId());
		vo.setNickname(((MemberVO) ss.getAttribute("login_info")).getNickname());
		service2.inquiry_insert(vo);
		return "redirect:inquiry.my";
	}
	
	//1:1 ���� �۾��� ȭ��
	@RequestMapping("/new.my")
	public String mypage_new() {
		return "mypage/new";
	}
	
	//1:1 ���� ��ȭ��
	@RequestMapping("/inquirydetail.my")
	public String mypage_inquirydetail(int id, Model model) {
		model.addAttribute("crlf", "\r\n");
		model.addAttribute("lf", "\n");
		
		service2.inquiry_read(id);
		model.addAttribute("page", page);
		model.addAttribute("vo", service2.inquiry_deatail(id));
		return "mypage/inquirydetail";
	}
	
	//1:1 ����
	@RequestMapping("/inquiry.my")
	public String mypage_inquiry(MemberVO v, HttpSession ss, Model model,  @RequestParam(defaultValue = "1") int curPage) {
		page.setUserid( ((MemberVO) ss.getAttribute("login_info")).getId() );
		page.setCurPage(curPage);
		
		model.addAttribute("page", service.inquiry_list(page));
		return "mypage/inquiry";
	}
	
	//�� Ȱ������
	@RequestMapping("/activity.my")
	public String mypage_activity(Model model, @RequestParam(defaultValue = "1") int curPage, HttpSession ss) {
		cpage.setCurPage(curPage);
		cpage.setUserid(( (MemberVO) ss.getAttribute("login_info") ).getId());

		model.addAttribute("cpage", service2.activity_list(cpage));
		model.addAttribute("crlf", "\r\n");
		return "mypage/activity";
	}
	
	//��ũ���� ������ ����
	@RequestMapping("/scrapdelete.my")
	public String scrapdelete(String scr_id) {
		service.scrap_delete(scr_id);
		return "redirect:scraprecipe.my";
	}
	
	//��ũ���� ������
	@RequestMapping("/scraprecipe.my")
	public String mypage_scraprecipe(HttpSession ss, Model model) {
		spage.setUserid( ( (MemberVO) ss.getAttribute("login_info") ).getId() );
		model.addAttribute("spage", service.scrap_list(spage));
		return "mypage/scraprecipe";
	}
	
	//���� �ø� ������
	@RequestMapping("/myrecipe.my")
	public String mypage_myrecipe(HttpSession ss, Model model) {
		rpage.setUserid( ( (MemberVO) ss.getAttribute("login_info") ).getId() );
		
		model.addAttribute("rpage", service.myrecipe_list(rpage));
		return "mypage/myrecipe";
	}
	
	//�� ���� ���� ��û
	@ResponseBody @RequestMapping(value="/update", produces="text/html; charset=utf-8")
	public String update(MemberVO vo, HttpServletRequest request, HttpSession ss, MultipartFile file, int delete) {
		vo.setId(((MemberVO) ss.getAttribute("login_info")).getId());
		StringBuffer msg = new StringBuffer("<script type='text/javascript'>");
		String uuid = ss.getServletContext().getRealPath("resources") + vo.getUser_pic();
		
		if( file.getSize()>0 ) {
			//������ ÷���ϴ� ���
			vo.setUser_picname( file.getOriginalFilename() );
			vo.setUser_pic( common.fileUpload(file, ss, "mypage"));
			//���� ÷�ε� ������ �ٲ� ÷���ϴ� ���
			//���� ÷�ε� ������ �����Ѵ�.
			File f = new File( uuid );
			if( f.exists() ) f.delete();
			
		}else {
			//����÷������ �ʴ� ���		
			if( delete != 1 ) {
				//1.���� ÷�ε� ������ �״�� ����ϴ� ���
				vo.setUser_picname( vo.getUser_picname() );
				vo.setUser_pic( vo.getUser_pic() );
			}else {
				//2.���� ÷�ε� ������ �����ϴ� ���
				//���� ÷�ε� ������ �����Ѵ�.
				File f = new File( uuid );
				if( f.exists() ) f.delete();
			}
		}
		
		if (service.mypage_update(vo)) {
			msg.append("alert('ȸ������ ���� �Ϸ�'); location='detail.my'");
		}else {
			msg.append("alert('ȸ������ ���� ����'); history.go(-1)");
		}
		msg.append("</script>");
		
		return msg.toString();
	}
	
	//�� ����
	@RequestMapping("/detail.my")
	public String mypage_detail() {
		return "mypage/detail";
	}
	
	//���� ������
	@RequestMapping("/main.my")
	public String mypage() {
		return "mypage/main";
	}
	
	
}
