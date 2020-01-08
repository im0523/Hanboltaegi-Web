package notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import community.CommunityVO;

@Repository	//메모리에 올려놓는 처리
public class NoticeDAO implements NoticeService {
	@Autowired
	@Qualifier("first")
	private SqlSession sql;

	@Override
	public void notice_insert(NoticeVO vo) {
		sql.insert("notice.mapper.insert", vo);
	}

	@Override
	public NoticePageVO notice_list(NoticePageVO page) {
		page.setTotalList((Integer) sql.selectOne("notice.mapper.totalCount", page));
		List<NoticeVO> list = sql.selectList("notice.mapper.list", page);
		page.setList(list);
		return page;
	}

	@Override
	public NoticeVO notice_detail(int no) {
		return sql.selectOne("notice.mapper.detail", no);
	}

	@Override
	public void notice_update(NoticeVO vo) {
		sql.update("notice.mapper.update", vo);
	}

	@Override
	public void notice_delete(int no) {
		sql.delete("notice.mapper.delete", no);
	}

}
