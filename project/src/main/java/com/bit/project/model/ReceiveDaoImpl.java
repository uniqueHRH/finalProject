package com.bit.project.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.project.common.Search;
import com.bit.project.model.entity.ReceiveVo;

@Repository
public class ReceiveDaoImpl implements ReceiveDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ReceiveVo> selectAll_receive(Search search) throws Exception {
		return sqlSession.selectList("receive.selectAll_receive", search);
	}

	@Override
	public ReceiveVo selectOne_receive(int value) throws Exception {
		return sqlSession.selectOne("receive.selectOne_receive",value);
	}
	
	@Override
	public ReceiveVo selectOne_receiveLimitOne(String key) throws Exception {
		return sqlSession.selectOne("receive.selectOne_receiveLimitOne", key);
	}

	@Override
	public int updateOne_receive(int key) throws Exception {
		return sqlSession.update("receive.updateOne_receive", key);
	}
	
	@Override
	public int deleteOne_receive(int value) throws Exception {
		return sqlSession.delete("receive.deleteOne_receive",value);
	}

	@Override
	public int getReceiveListCnt(Search search) throws Exception {
		return sqlSession.selectOne("receive.getReceiveListCnt", search);
	}

	@Override
	public CharSequence select_receiveUnCnt(String msg) throws Exception {
		return sqlSession.selectOne("receive.select_receiveUnCnt", msg);
	}

	
}
