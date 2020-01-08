package com.hanbol.first;

import java.io.File;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import common.CommonService;
import community.CommentVO;
import community.CommunityPageVO;
import community.CommunityServiceImpl;
import community.CommunityVO;
import member.MemberVO;

@Controller
public class CommunutyController {

	@Autowired
	private CommunityPageVO page;
	@Autowired
	private CommunityServiceImpl service;
	@Autowired
	private CommonService common;

	
	
	
	// 댓글삭제 처리
	@ResponseBody
	@RequestMapping("/community/comment/delete/{id}")
	public void comment_delete(@PathVariable int id) {
		service.community_comment_delete(id);
	}

	// 댓글 수정처리
	@ResponseBody
	@RequestMapping(value = "/community/comment/update", produces = "application/text; charset=utf-8")
	public String comment_update(@RequestBody CommentVO vo) {
		return service.community_comment_update(vo) ? "수정성공" : "수정실패";
	}

	// 댓글 삽입처리
	@ResponseBody
	@RequestMapping("/community/comment/insert")
	public boolean comment_insert(HttpSession ss, int pid, String content) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pid", pid);
		map.put("content", content);
		map.put("userid", ((MemberVO) ss.getAttribute("login_info")).getId());
		return service.community_comment_insert(map);
	}

	// 댓글 리스트 화면요청처리
	@RequestMapping("/community/comment/{pid}")
	public String comment_list(Model model, @PathVariable int pid) {
		model.addAttribute("list", service.community_comment_list(pid));
		model.addAttribute("crlf", "\r\n");
		model.addAttribute("lf", "\n");
		return "community/comment/list";
	}

	// 자유게시판 수정처리
	@RequestMapping("/update.co")
	public String update(CommunityVO vo, int delete, HttpSession ss, Model model, MultipartFile image1,
			MultipartFile image2, MultipartFile image3) {
		CommunityVO old = service.community_detail(vo.getNo());
		String uuid = ss.getServletContext().getRealPath("resources") + old.getCo_file1();
		String uuid1 = ss.getServletContext().getRealPath("resources") + old.getCo_file2();
		String uuid2 = ss.getServletContext().getRealPath("resources") + old.getCo_file3();
		if (image1.getSize() > 0) {
			vo.setCo_filename1(image1.getOriginalFilename());
			vo.setCo_file1(common.fileUpload(image1, ss, "community"));
			File f = new File(uuid);
			if (f.exists())
				f.delete();

		} else {
			if (delete != 1) {
				vo.setCo_filename1(old.getCo_filename1());
				vo.setCo_file1(old.getCo_file1());
			} else {
				File f = new File(uuid);
				if (f.exists())
					f.delete();
			}
		}

		if (image2.getSize() > 0) {
			vo.setCo_filename2(image2.getOriginalFilename());
			vo.setCo_file2(common.fileUpload(image2, ss, "community"));
			File f = new File(uuid1);
			if (f.exists())
				f.delete();

		} else {
			if (delete != 1) {
				vo.setCo_filename2(old.getCo_filename2());
				vo.setCo_file2(old.getCo_file2());
			} else {
				File f = new File(uuid1);
				if (f.exists())
					f.delete();
			}
		}

		if (image3.getSize() > 0) {
			vo.setCo_filename3(image3.getOriginalFilename());
			vo.setCo_file3(common.fileUpload(image3, ss, "community"));
			File f = new File(uuid2);
			if (f.exists())
				f.delete();

		} else {
			if (delete != 1) {
				vo.setCo_filename3(old.getCo_filename3());
				vo.setCo_file3(old.getCo_file3());
			} else {
				File f = new File(uuid2);
				if (f.exists())
					f.delete();
			}
		}

		service.community_update(vo);
		model.addAttribute("no", vo.getNo());
		return "community/redirect";

	}
	

	
	// 신규 자유게시판 수정화면 이동
	@RequestMapping("/modify.co")
	public String modify(int no, Model model) {
		model.addAttribute("vo", service.community_detail(no));
		return "community/modify";
	}

	// 신규 자유게시판 저장처리 요청
	@RequestMapping("/insert.co")
	public String insert(CommunityVO vo, HttpSession ss, MultipartFile image1, MultipartFile image2,
			MultipartFile image3) {
		vo.setCo_filename1(image1.getOriginalFilename());
		vo.setCo_filename2(image2.getOriginalFilename());
		vo.setCo_filename3(image3.getOriginalFilename());
		vo.setCo_file1(common.fileUpload(image1, ss, "community"));
		vo.setCo_file2(common.fileUpload(image2, ss, "community"));
		vo.setCo_file3(common.fileUpload(image3, ss, "community"));

		vo.setUserid(((MemberVO) ss.getAttribute("login_info")).getId());
		vo.setNickname(((MemberVO) ss.getAttribute("login_info")).getNickname());
		// String aa = ((MemberVO) ss.getAttribute("login_info")).getNickname();
		vo.setUser_pic(((MemberVO) ss.getAttribute("login_info")).getUser_pic());

		service.community_insert(vo);
		return "redirect:list.co";
	}

	// �Խñ� ����ó�� ��û
	@RequestMapping("/delete.co")
	public String delete(int no) {
		service.community_delete(no);
		return "redirect:list.co";
	}

	// �Խñۻ�ȭ�� ��û
	@RequestMapping("/detail.co")
	public String detail(int no, Model model) {
		service.community_read(no);
		model.addAttribute("page", page);
		model.addAttribute("vo", service.community_detail(no));
		model.addAttribute("crlf", "\r\n");
		return "community/detail";
	}

	//좋아요 처리
	@RequestMapping("/good.co")
	public String good(int no, Model model) {
		service.community_good(no);
		model.addAttribute("vo", service.community_detail(no));
		model.addAttribute("crlf", "\r\n");
		return "community/detail";	
	}
	

	// �ű� �����Խ��� ���ۼ� ȭ�� ��û
	@RequestMapping("/new.co")
	public String community() {
		return "community/new";
	}

	// �����Խ��Ǹ�� ȭ�� ��û
	@RequestMapping("/list.co")
	public String list(Model model, @RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "") String search, @RequestParam(defaultValue = "") String keyword) {

		page.setCurPage(curPage);
		page.setSearch(search);
		page.setKeyword(keyword);

		model.addAttribute("page", service.community_list(page));
		model.addAttribute("crlf", "\r\n");
		return "community/list";
	}

}
