package notice;

public interface NoticeService {
	//CRUD
	void notice_insert(NoticeVO vo);
	NoticePageVO notice_list(NoticePageVO page);
	NoticeVO notice_detail(int no);
	void notice_update(NoticeVO vo);
	void notice_delete(int no);
}
