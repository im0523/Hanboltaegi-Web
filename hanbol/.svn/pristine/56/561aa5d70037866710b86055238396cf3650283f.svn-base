package common;

import java.io.File;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import community.CommunityVO;

public interface CommonService {
	String fileUpload(MultipartFile file, HttpSession ss, String category);
	
	//�쓳�떟諛쏅뒗嫄� �뙆�씪�쓣 諛쏅뒗 泥섎━ void �넂 File
	File fileDownLoad(String name, String path, HttpSession ss, HttpServletResponse response);


}
