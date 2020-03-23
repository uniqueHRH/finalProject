package com.bit.project.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.project.model.entity.NoticeVo;

@Repository
public class NoticeDaoImpl implements NoticeDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<NoticeVo> selectAll_notice() throws Exception {
		return sqlSession.selectList("notice.selectAll_notice");
	}

	@Override
	public NoticeVo selectOne_notice(int key) throws Exception {
		return sqlSession.selectOne("notice.selectOne_notice",key);
	}

	@Override
	public void insertOne_notice(NoticeVo bean) throws Exception {
		sqlSession.insert("notice.insertOne_notice",bean);
	}

	@Override
	public int updateOne_notice(NoticeVo bean) throws Exception {
		return sqlSession.update("notice.updateOne_notice",bean);
	}

	@Override
	public int deleteOne_notice(int key) throws Exception {
		return sqlSession.delete("notice.deleteOne_notice",key);
	}

}
