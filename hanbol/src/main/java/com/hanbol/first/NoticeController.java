package com.hanbol.first;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import member.MemberVO;
import notice.NoticePageVO;
import notice.NoticeServiceImpl;
import notice.NoticeVO;

@Controller
public class NoticeController {

	@Autowired
	private NoticePageVO page;
	@Autowired
	private NoticeServiceImpl service;

	// 공지사항 삭제

	@RequestMapping("/delete.no")
	public String delete(int no) {
		service.notice_delete(no);
		return "redirect:list.no";
	}

	// 공지사항 업데이트

	@RequestMapping("/update.no")
	public String update(NoticeVO vo, Model model) {
		service.notice_update(vo);
		model.addAttribute("no", vo.getNo());
		return "notice/redirect";
	}

	// 공지사항 수정
	@RequestMapping("/modify.no")
	public String modify(int no, Model model) {
		model.addAttribute("vo", service.notice_detail(no));
		return "notice/modify";
	}

	// 공지사항 세부사항
	@RequestMapping("/detail.no")
	public String detail(@ModelAttribute("no") int no, Model model) {
		model.addAttribute("crlf", "\r\n");
		model.addAttribute("lf", "\n");
		model.addAttribute("page", page);
		model.addAttribute("vo", service.notice_detail(no));
		return "notice/detail";
	}

	// 공지사항 글쓰기

	@RequestMapping("/insert.no")
	public String insert(NoticeVO vo, HttpSession ss) {

		vo.setId(((MemberVO) ss.getAttribute("login_info")).getId());
		vo.setNickname(((MemberVO) ss.getAttribute("login_info")).getNickname());
		service.notice_insert(vo);
		return "redirect:list.no";
	}

	// ���۾��� ȭ�� ��û

	@RequestMapping("/new.no")
	public String notice() {
		return "notice/new";
	}

	// �����Խ��Ǹ�� ȭ�� ��û
	@RequestMapping("/list.no")
	public String list(Model model, @RequestParam(defaultValue = "1") int curPage) {

		page.setCurPage(curPage);

		model.addAttribute("page", service.notice_list(page));
		model.addAttribute("crlf", "\r\n");
		return "notice/list";
	}

}
