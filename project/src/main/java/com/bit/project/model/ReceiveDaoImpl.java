package com.bit.project.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.project.model.entity.ReceiveVo;

@Repository
public class ReceiveDaoImpl implements ReceiveDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ReceiveVo> selectAll_receive() throws Exception {
		return sqlSession.selectList("receive.selectAll_receive");
	}

	@Override
	public ReceiveVo selectOne_receive(int value) throws Exception {
		return sqlSession.selectOne("receive.selectOne_receive",value);
	}

	@Override
	public int deleteOne_receive(int value) throws Exception {
		return sqlSession.delete("receive.deleteOne_receive",value);
	}


}
