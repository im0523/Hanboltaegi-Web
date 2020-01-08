package notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDAO dao;

	@Override
	public void notice_insert(NoticeVO vo) {
		dao.notice_insert(vo);
	}

	@Override
	public NoticePageVO notice_list(NoticePageVO page) {
		return dao.notice_list(page);
	}

	@Override
	public NoticeVO notice_detail(int no) {
		return dao.notice_detail(no);
	}

	@Override
	public void notice_update(NoticeVO vo) {
		dao.notice_update(vo);
	}

	@Override
	public void notice_delete(int no) {
		dao.notice_delete(no);
	}

}
