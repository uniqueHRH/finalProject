package com.bit.project.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.project.model.entity.ReplyVo;

@Repository
public class ReplyDaoImpl implements ReplyDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ReplyVo> selectAll_reply(int key) throws Exception {
		return sqlSession.selectList("reply.selectAll_reply", key);
	}

	@Override
	public void insertOne_reply(ReplyVo bean) throws Exception {
		sqlSession.insert("reply.insertOne_reply",bean);
	}

	@Override
	public int updateOne_reply(ReplyVo bean) throws Exception {
		return sqlSession.update("reply.updateOne_reply",bean);
	}

	@Override
	public int deleteOne_reply(int key) throws Exception {
		return sqlSession.delete("reply.deleteOne_reply",key);
	}


}
