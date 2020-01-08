package com.hanbol.first;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.MemberService;
import member.MemberVO;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Resource(name = "member.service") private MemberService service;
	
	@RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "ranking/home";
	}
	
	@RequestMapping("/err")
	public String error_page(Model model, HttpServletRequest request) {
		Throwable exception = (Throwable)request.getAttribute("javax.servlet.error.exception");
		StringBuilder msg = new StringBuilder();
		while( exception != null ) {
			msg.append( "<p>" + exception.getMessage() + "</p>");
			exception = exception.getCause();
		}
		model.addAttribute("msg", msg.toString());
		int code = (Integer)request.getAttribute("javax.servlet.error.status_code");
		return "error/" + code;
	}
}
