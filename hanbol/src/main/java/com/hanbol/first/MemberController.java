package com.hanbol.first;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import common.CommonService;
import member.MemberService;
import member.MemberVO;

@Controller
public class MemberController {

	@Resource(name = "member.service") private MemberService service;
	
	//회원가입처리 요청
	@ResponseBody @RequestMapping(value="/join", produces="text/html; charset=utf-8")
	public String join(MemberVO vo) {
		StringBuffer msg = new StringBuffer("<script type='text/javascript'>");
	if( service.member_insert(vo) ) {
		//common.emailSend(vo.getName(), vo.getEmail(), request, null);
		msg.append("alert('회원가입 성공'); location='list.re'");
	}else {
//		msg.append("alert('회원가입 실패'); location='member'");
		msg.append("alert('회원가입 실패'); history.go(-1)");
	}
	msg.append("</script>");
	
	return msg.toString();
	}
	
	//닉네임 중복확인
	@ResponseBody @RequestMapping("/nick_usable")
	public String nick_usable(String nickname) {
		return String.valueOf(service.nick_usable(nickname));
	}
	
	//id 중복확인
	@ResponseBody @RequestMapping("/id_usable")
	public String id_usable(String id) {
		return String.valueOf(service.id_usable(id));
	}
	
	//로그아웃처리 요청
	@ResponseBody @RequestMapping("/logout")
	public void logout(HttpSession session) {
		session.removeAttribute("login_info");
	}
		

	
	// 로그인처리 요청
	@ResponseBody @RequestMapping("/login")
	public boolean login(String id, String pwd, HttpSession session) {
		MemberVO vo = service.member_login(id, pwd);
		session.setAttribute("login_info", vo);
		return vo == null ? false : true;
	}
	
	//로그인 화면
	@RequestMapping("/member")
	public String member() {
		return "member/loginpage";
	}
	
	//회원가입 화면
	@RequestMapping("/join.me")
	public String join() {
		return "member/join";
	}
	
}























