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
import member.MemberVO;
import mypage.ScrapVO;
import recipe.RecipeCommentVO;
import recipe.RecipePageVO;
import recipe.RecipeServiceImpl;
import recipe.RecipeVO;

@Controller
public class RecipeController {
	@Autowired private RecipeServiceImpl service;
	@Autowired private RecipePageVO page;
	@Autowired private CommonService common;

	//recipe list page
	@RequestMapping("/list.re")
	public String recipe_list(Model model,
							  @RequestParam(defaultValue = "") String keywords,
							  @RequestParam(defaultValue = "") String cat_nm,
							  @RequestParam(defaultValue = "") String cat_val,
							  @RequestParam(defaultValue = "1") int curPage) {//@Request ~~ :default嚥∽옙 1占쎈읂占쎌뵠筌욑옙�몴占� �겫�뜄�쑎占쎌궎占쎈뮉 筌ｌ꼶�봺) {
	
		page.setKeywords(keywords);
		page.setCat_nm(cat_nm);
		page.setCat_val(cat_val);
		page.setCurPage(curPage);

		model.addAttribute("page", service.recipe_list(page));
		return "recipe/list";
	}
	
	//recipe new writing screen request
	@RequestMapping("new.re")
	public String recipe() {
		return "recipe/new";
	}
	
	//recipe new writing request
	@RequestMapping("/insert.re")
	public String insert(RecipeVO vo, HttpSession ss, MultipartFile file_imagepath, MultipartFile image[]) {
//		vo.setImagename(file_imagepath.getOriginalFilename());
		vo.setImagepath( common.fileUpload(file_imagepath, ss, "recipe") );
				
		MultipartFile images[] = { null, null, null, null, null, null, null, null, null, null};
		for(int i=0; i<image.length; i++)
			 images[i] = image[i]; 
		vo.setImage1(  images[0]!=null && images[0].getSize()>0 ? common.fileUpload(image[0], ss, "recipe") : "" );
		vo.setImage2(  images[1]!=null && images[1].getSize()>0 ? common.fileUpload(image[1], ss, "recipe") : "" );
		vo.setImage3(  images[2]!=null && images[2].getSize()>0 ? common.fileUpload(image[2], ss, "recipe") : "" );
		vo.setImage4(  images[3]!=null && images[3].getSize()>0 ? common.fileUpload(image[3], ss, "recipe") : "" );
		vo.setImage5(  images[4]!=null && images[4].getSize()>0 ? common.fileUpload(image[4], ss, "recipe") : "" );
		vo.setImage6(  images[5]!=null &&  images[5].getSize()>0 ? common.fileUpload(image[5], ss, "recipe") : "" );
		vo.setImage7(  images[6]!=null && images[6].getSize()>0 ? common.fileUpload(image[6], ss, "recipe") : "" );
		vo.setImage8(  images[7]!=null && images[7].getSize()>0 ? common.fileUpload(image[7], ss, "recipe") : "" );
		vo.setImage9(  images[8]!=null && images[8].getSize()>0 ? common.fileUpload(image[8], ss, "recipe") : "" );
		vo.setImage10( images[9]!=null &&  images[9].getSize()>0 ? common.fileUpload(image[9], ss, "recipe") : "" );
		vo.setUserid( ((MemberVO)ss.getAttribute("login_info")).getId() );
		service.recipe_insert(vo);
		return "redirect:list.re";
	}
	
	//recipe detail screen request
	@RequestMapping("/detail.re")
	public String detail(String recipe_id, Model model) {
		service.recipe_read(recipe_id);
		model.addAttribute("vo", service.recipe_detail(recipe_id));
		model.addAttribute("crlf", "\r\n");
		model.addAttribute("page", page);
		return "recipe/detail";
	}
	
	//레시피 수정화면 요청
	@RequestMapping("/modify.re")
	public String modify(String recipe_id, Model model) {
		model.addAttribute("vo", service.recipe_detail(recipe_id));
		return "recipe/modify";
	}
	
	//레시피 수정처리 요청
	@RequestMapping("/update.re")
	public String update(RecipeVO vo, MultipartFile file_imagepath, MultipartFile image[], HttpSession ss, Model model, int delete) {
		RecipeVO old = service.recipe_detail( vo.getRecipe_id() );
		String uuid = ss.getServletContext().getRealPath("resources") + old.getImagepath();
		String uuid1 = ss.getServletContext().getRealPath("resources") + old.getImage1();
		if( file_imagepath.getSize()>0 ) {
			//파일을 첨부하는 경우
			 vo.setImagepath( common.fileUpload(file_imagepath, ss, "recipe"));
			// 원래 첨부된 파일을 바꿔 첨부하는 경우
			//원래 첨부된 파일을 삭제한다.
			File f = new File( uuid );
			if( f.exists() ) f.delete();
		} else {
			//파일을 첨부하지 않는 경우
			if( delete != 1 ) {
				//1. 원래 첨부된 파일을 그대로 사용하는 경우
				vo.setImagepath( old.getImagepath() );
			}else {
				//2. 원래 첨부된 파일을 삭제하는 경우
				//원래 첨부된 파일을 삭제한다.
				File f = new File(uuid);
						if ( f.exists() ) f.delete();
			}
		}
		
		for(int i=0; i<image.length; i++) {
			if( image[i].getSize()>0 ) {
				//파일을 첨부하는 경우
				switch(i) {
				case 0:
					vo.setImage1( common.fileUpload(image[i], ss, "recipe")); break;
				case 1:
					vo.setImage2( common.fileUpload(image[i], ss, "recipe")); break;
				case 2:
					vo.setImage3( common.fileUpload(image[i], ss, "recipe")); break;
				case 3:
					vo.setImage4( common.fileUpload(image[i], ss, "recipe")); break;
				case 4:
					vo.setImage5( common.fileUpload(image[i], ss, "recipe")); break;
				case 5:
					vo.setImage6( common.fileUpload(image[i], ss, "recipe")); break;
				case 6:
					vo.setImage7( common.fileUpload(image[i], ss, "recipe")); break;
				case 7:
					vo.setImage8( common.fileUpload(image[i], ss, "recipe")); break;
				case 8:
					vo.setImage9( common.fileUpload(image[i], ss, "recipe")); break;
				case 9:
					vo.setImage10( common.fileUpload(image[i], ss, "recipe")); break;
				}
				// 원래 첨부된 파일을 바꿔 첨부하는 경우 - 원래 첨부된 파일을 삭제한다.
				File f = new File( uuid1 );
				if( f.exists() ) f.delete();
			} else {
				//파일을 첨부하지 않는 경우
				if( delete != 1 ) {
					//파일을 첨부하는 경우
					vo.setImage1( old.getImage1() );	//1. 원래 첨부된 파일을 그대로 사용하는 경우
					switch(i) {
					case 0:
						vo.setImage1( old.getImage1() ); break;
					case 1:
						vo.setImage2( old.getImage2() ); break;
					case 2:
						vo.setImage3( old.getImage3() ); break;
					case 3:
						vo.setImage4( old.getImage4() ); break;
					case 4:
						vo.setImage5( old.getImage5() ); break;
					case 5:
						vo.setImage6( old.getImage6() ); break;
					case 6:
						vo.setImage7( old.getImage7() ); break;
					case 7:
						vo.setImage8( old.getImage8() ); break;
					case 8:
						vo.setImage9( old.getImage9() ); break;
					case 9:
						vo.setImage10( old.getImage10() ); break;
					}
				}else {
					//2. 원래 첨부된 파일을 삭제하는 경우 - 원래 첨부된 파일을 삭제한다.
					File f = new File(uuid1);
					if ( f.exists() ) f.delete();
				}
			}
		}
		service.recipe_update(vo);
		model.addAttribute("recipe_id", vo.getRecipe_id());
		return "recipe/redirect";
	}
	
	//recipe delete
	@RequestMapping("/delete.re")
	public String delete(String recipe_id) {
		service.recipe_delete(recipe_id);
		return "redirect:list.re";
	}
	
	//레시피 좋아요
	@RequestMapping("/good.re")
	public String good(String recipe_id, Model model) {
		service.recipe_good(recipe_id);
		model.addAttribute("vo", service.recipe_detail(recipe_id));
		return "recipe/detail";	
	}
	
	
	//레시피 스크랩
	@RequestMapping("/scrap.re")
	public String recipescrap(ScrapVO vo, HttpSession ss, RecipeVO v, Model model, String recipe_id, String userid) {
		 vo.setScr_userid(((MemberVO) ss.getAttribute("login_info")).getId());
		 vo.setScr_recipeid( recipe_id );
		 vo.setTarget_userid(userid);
//		service.recipe_scrap(vo, recipe_id);
		 service.recipe_scrap(vo, recipe_id, userid);
		 model.addAttribute("vo", service.recipe_detail(recipe_id));
		return "recipe/detail";
	}

	//recipe comment list screen request
	@RequestMapping("/recipe/comment/{rc_id}")
	public String comment_list(Model model, @PathVariable String rc_id) {
		model.addAttribute("list", service.recipe_comment_list(rc_id));
		model.addAttribute("crlf", "\r\n");
		model.addAttribute("lf", "\n");
		return "recipe/comment/list";
	}
	
	//recipe comment insert
	@ResponseBody
	@RequestMapping("/recipe/comment/insert")
	public boolean comment_insert(HttpSession ss, String rc_id, String content) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("rc_id", rc_id);
		map.put("content", content);
		map.put("member_id", ((MemberVO) ss.getAttribute("login_info")).getId());
		return service.recipe_comment_insert(map);
	}
	
	//recipe comment delete
	@ResponseBody
	@RequestMapping("/recipe/comment/delete/{no}")
	public void comment_delete(@PathVariable int no) {
		service.recipe_comment_delete(no);
	}
	
	//recipe comment update
	@ResponseBody
	@RequestMapping(value="/recipe/comment/update", produces = "application/text; charset=utf-8" )
	public String comment_update(@RequestBody RecipeCommentVO vo) {
		return service.recipe_comment_update(vo) ? "수정성공!" : "수정실패!";
	}
}
