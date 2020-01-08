package ranking;

import java.sql.Date;

public class RankingVO {
	private int no,cnt,writer,good;
	private String nickname, following,user_pic,write,userid,target_userid,id,follower;
	
	private String rc_id,member_id,content,writedate;
	
	private int readcnt;
	private String recipe_id, title,  subtitle, portion, time, cat1, cat2, cat3, cat4, degree,
	scrap, imagename, imagepath, text,
	material_name0, material_unit0, material_name1, material_unit1, material_name2, material_unit2, material_name3, material_unit3,
	material_name4, material_unit4,	material_name5, material_unit5, material_name6, material_unit6, material_name7, material_unit7,
	material_name8, material_unit8, material_name9, material_unit9, material_name10, material_unit10, material_name11, material_unit11, material_name12, material_unit12;
	private String image1, image2, image3, image4, image5, image6, image7, image8, image9, image10, text1, text2, text3, text4, text5, text6, text7, text8, text9, text10;
	
	private int num,  root, step, indent, comments;
	private String co_file1, co_file2, co_file3, co_filename1, co_filename2, co_filename3;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getRoot() {
		return root;
	}
	public void setRoot(int root) {
		this.root = root;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public int getIndent() {
		return indent;
	}
	public void setIndent(int indent) {
		this.indent = indent;
	}
	public int getComments() {
		return comments;
	}
	public void setComments(int comments) {
		this.comments = comments;
	}
	public String getCo_file1() {
		return co_file1;
	}
	public void setCo_file1(String co_file1) {
		this.co_file1 = co_file1;
	}
	public String getCo_file2() {
		return co_file2;
	}
	public void setCo_file2(String co_file2) {
		this.co_file2 = co_file2;
	}
	public String getCo_file3() {
		return co_file3;
	}
	public void setCo_file3(String co_file3) {
		this.co_file3 = co_file3;
	}
	public String getCo_filename1() {
		return co_filename1;
	}
	public void setCo_filename1(String co_filename1) {
		this.co_filename1 = co_filename1;
	}
	public String getCo_filename2() {
		return co_filename2;
	}
	public void setCo_filename2(String co_filename2) {
		this.co_filename2 = co_filename2;
	}
	public String getCo_filename3() {
		return co_filename3;
	}
	public void setCo_filename3(String co_filename3) {
		this.co_filename3 = co_filename3;
	}
	public String getTarget_userid() {
		return target_userid;
	}
	public void setTarget_userid(String target_userid) {
		this.target_userid = target_userid;
	}
	public String getFollower() {
		return follower;
	}
	public void setFollower(String follower) {
		this.follower = follower;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getTarget_id() {
		return target_userid;
	}
	public void setTarget_id(String target_userid) {
		this.target_userid = target_userid;
	}
	public String getWrite() {
		return write;
	}
	public void setWrite(String write) {
		this.write = write;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getWriter() {
		return writer;
	}
	public void setWriter(int writer) {
		this.writer = writer;
	}
	public int getGood() {
		return good;
	}
	public void setGood(int good) {
		this.good = good;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getFollowing() {
		return following;
	}
	public void setFollowing(String following) {
		this.following = following;
	}
	public String getUser_pic() {
		return user_pic;
	}
	public void setUser_pic(String user_pic) {
		this.user_pic = user_pic;
	}
	public String getRc_id() {
		return rc_id;
	}
	public void setRc_id(String rc_id) {
		this.rc_id = rc_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	public String getRecipe_id() {
		return recipe_id;
	}
	public void setRecipe_id(String recipe_id) {
		this.recipe_id = recipe_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	public String getPortion() {
		return portion;
	}
	public void setPortion(String portion) {
		this.portion = portion;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getCat1() {
		return cat1;
	}
	public void setCat1(String cat1) {
		this.cat1 = cat1;
	}
	public String getCat2() {
		return cat2;
	}
	public void setCat2(String cat2) {
		this.cat2 = cat2;
	}
	public String getCat3() {
		return cat3;
	}
	public void setCat3(String cat3) {
		this.cat3 = cat3;
	}
	public String getCat4() {
		return cat4;
	}
	public void setCat4(String cat4) {
		this.cat4 = cat4;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getScrap() {
		return scrap;
	}
	public void setScrap(String scrap) {
		this.scrap = scrap;
	}
	public String getImagename() {
		return imagename;
	}
	public void setImagename(String imagename) {
		this.imagename = imagename;
	}
	public String getImagepath() {
		return imagepath;
	}
	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getMaterial_name0() {
		return material_name0;
	}
	public void setMaterial_name0(String material_name0) {
		this.material_name0 = material_name0;
	}
	public String getMaterial_unit0() {
		return material_unit0;
	}
	public void setMaterial_unit0(String material_unit0) {
		this.material_unit0 = material_unit0;
	}
	public String getMaterial_name1() {
		return material_name1;
	}
	public void setMaterial_name1(String material_name1) {
		this.material_name1 = material_name1;
	}
	public String getMaterial_unit1() {
		return material_unit1;
	}
	public void setMaterial_unit1(String material_unit1) {
		this.material_unit1 = material_unit1;
	}
	public String getMaterial_name2() {
		return material_name2;
	}
	public void setMaterial_name2(String material_name2) {
		this.material_name2 = material_name2;
	}
	public String getMaterial_unit2() {
		return material_unit2;
	}
	public void setMaterial_unit2(String material_unit2) {
		this.material_unit2 = material_unit2;
	}
	public String getMaterial_name3() {
		return material_name3;
	}
	public void setMaterial_name3(String material_name3) {
		this.material_name3 = material_name3;
	}
	public String getMaterial_unit3() {
		return material_unit3;
	}
	public void setMaterial_unit3(String material_unit3) {
		this.material_unit3 = material_unit3;
	}
	public String getMaterial_name4() {
		return material_name4;
	}
	public void setMaterial_name4(String material_name4) {
		this.material_name4 = material_name4;
	}
	public String getMaterial_unit4() {
		return material_unit4;
	}
	public void setMaterial_unit4(String material_unit4) {
		this.material_unit4 = material_unit4;
	}
	public String getMaterial_name5() {
		return material_name5;
	}
	public void setMaterial_name5(String material_name5) {
		this.material_name5 = material_name5;
	}
	public String getMaterial_unit5() {
		return material_unit5;
	}
	public void setMaterial_unit5(String material_unit5) {
		this.material_unit5 = material_unit5;
	}
	public String getMaterial_name6() {
		return material_name6;
	}
	public void setMaterial_name6(String material_name6) {
		this.material_name6 = material_name6;
	}
	public String getMaterial_unit6() {
		return material_unit6;
	}
	public void setMaterial_unit6(String material_unit6) {
		this.material_unit6 = material_unit6;
	}
	public String getMaterial_name7() {
		return material_name7;
	}
	public void setMaterial_name7(String material_name7) {
		this.material_name7 = material_name7;
	}
	public String getMaterial_unit7() {
		return material_unit7;
	}
	public void setMaterial_unit7(String material_unit7) {
		this.material_unit7 = material_unit7;
	}
	public String getMaterial_name8() {
		return material_name8;
	}
	public void setMaterial_name8(String material_name8) {
		this.material_name8 = material_name8;
	}
	public String getMaterial_unit8() {
		return material_unit8;
	}
	public void setMaterial_unit8(String material_unit8) {
		this.material_unit8 = material_unit8;
	}
	public String getMaterial_name9() {
		return material_name9;
	}
	public void setMaterial_name9(String material_name9) {
		this.material_name9 = material_name9;
	}
	public String getMaterial_unit9() {
		return material_unit9;
	}
	public void setMaterial_unit9(String material_unit9) {
		this.material_unit9 = material_unit9;
	}
	public String getMaterial_name10() {
		return material_name10;
	}
	public void setMaterial_name10(String material_name10) {
		this.material_name10 = material_name10;
	}
	public String getMaterial_unit10() {
		return material_unit10;
	}
	public void setMaterial_unit10(String material_unit10) {
		this.material_unit10 = material_unit10;
	}
	public String getMaterial_name11() {
		return material_name11;
	}
	public void setMaterial_name11(String material_name11) {
		this.material_name11 = material_name11;
	}
	public String getMaterial_unit11() {
		return material_unit11;
	}
	public void setMaterial_unit11(String material_unit11) {
		this.material_unit11 = material_unit11;
	}
	public String getMaterial_name12() {
		return material_name12;
	}
	public void setMaterial_name12(String material_name12) {
		this.material_name12 = material_name12;
	}
	public String getMaterial_unit12() {
		return material_unit12;
	}
	public void setMaterial_unit12(String material_unit12) {
		this.material_unit12 = material_unit12;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public String getImage3() {
		return image3;
	}
	public void setImage3(String image3) {
		this.image3 = image3;
	}
	public String getImage4() {
		return image4;
	}
	public void setImage4(String image4) {
		this.image4 = image4;
	}
	public String getImage5() {
		return image5;
	}
	public void setImage5(String image5) {
		this.image5 = image5;
	}
	public String getImage6() {
		return image6;
	}
	public void setImage6(String image6) {
		this.image6 = image6;
	}
	public String getImage7() {
		return image7;
	}
	public void setImage7(String image7) {
		this.image7 = image7;
	}
	public String getImage8() {
		return image8;
	}
	public void setImage8(String image8) {
		this.image8 = image8;
	}
	public String getImage9() {
		return image9;
	}
	public void setImage9(String image9) {
		this.image9 = image9;
	}
	public String getImage10() {
		return image10;
	}
	public void setImage10(String image10) {
		this.image10 = image10;
	}
	public String getText1() {
		return text1;
	}
	public void setText1(String text1) {
		this.text1 = text1;
	}
	public String getText2() {
		return text2;
	}
	public void setText2(String text2) {
		this.text2 = text2;
	}
	public String getText3() {
		return text3;
	}
	public void setText3(String text3) {
		this.text3 = text3;
	}
	public String getText4() {
		return text4;
	}
	public void setText4(String text4) {
		this.text4 = text4;
	}
	public String getText5() {
		return text5;
	}
	public void setText5(String text5) {
		this.text5 = text5;
	}
	public String getText6() {
		return text6;
	}
	public void setText6(String text6) {
		this.text6 = text6;
	}
	public String getText7() {
		return text7;
	}
	public void setText7(String text7) {
		this.text7 = text7;
	}
	public String getText8() {
		return text8;
	}
	public void setText8(String text8) {
		this.text8 = text8;
	}
	public String getText9() {
		return text9;
	}
	public void setText9(String text9) {
		this.text9 = text9;
	}
	public String getText10() {
		return text10;
	}
	public void setText10(String text10) {
		this.text10 = text10;
	}
	
	


}
