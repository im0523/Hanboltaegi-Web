package common;

import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Service
public class CommonServiceImpl implements CommonService {

	@Override
	public String fileUpload(MultipartFile file, HttpSession ss, String category) {
		// 업로드 할 서버의 물리적 위치
		// D://Spring/..../hanbol/resources
		String resources = ss.getServletContext().getRealPath("resources");
		// D://Spring/..../hanbol/resources/upload
		String upload = resources + "/" + "upload";
		//String upload = resources + File.separator + "upload";

		// D://Spring/..../hanbol/resources/upload/notice/2019/09/05
		String folder = makeFolder(category, upload);
		String uuid = UUID.randomUUID().toString() + "_" + file.getOriginalFilename();

		try {
			// 생성한 폴더에 업로드한 파일 저장하기
			file.transferTo(new File(folder, uuid));
		} catch (Exception e) {
		}
		// /upload/recipe/2019/09/05/ff58523_abc.txt 내가 필요한 건 upload부터니까
//		return "http://localhost/first" + folder.substring( resources.length() ) + File.separator + uuid;
		return "http://112.164.58.12:80/hanbol" + folder.substring(resources.length()) + "/" + uuid;
		//return "http://112.164.58.12:80/hanbol" + folder.substring(resources.length()) + File.separator + uuid;
	}

	private String makeFolder(String category, String upload) {
		StringBuffer folder = new StringBuffer(upload);
		// D://Spring/..../hanbol/resources/upload/recipe
		folder.append("/" + category);
		Date now = new Date();
		// D://Spring/..../hanbol/resources/upload/recipe/2019
		folder.append("/" + new SimpleDateFormat("yyyy/MM/dd").format(now));

		// 해당폴더가 있는지 확인하여 없으면 폴더생성
		File dir = new File(folder.toString());
		if (!dir.exists()) {
			dir.mkdirs(); // 폴더가 여러개니까 mkdir이 아니라 mkdirs
		}
		return folder.toString();
	}

	@Override
	public File fileDownLoad(String name, String path, HttpSession ss, HttpServletResponse response) {
		// 다운로드 할 파일생성
		File file = new File(ss.getServletContext().getRealPath("resources") + File.separator + path);
		String mime = ss.getServletContext().getMimeType(name);
		if (mime == null) {
			mime = "application/octet-stream";
		}
		try {
			// response.setContentType("text/html; charset=utf-8");
			response.setContentType(mime);

			// 한글이 깨지지 않도록 처리
			name = URLEncoder.encode(name, "utf-8");
			response.setHeader("content-disposition", "attachment; filename=" + name); // header에 지정
			ServletOutputStream out = response.getOutputStream();
			FileCopyUtils.copy(new FileInputStream(file), out); // 파일을 복사(in)해서 붙여넣는(out) FileCopyUtils class
			out.flush(); // 바로 내려보내기
		} catch (Exception e) {
		}
		return file;
	}
}
