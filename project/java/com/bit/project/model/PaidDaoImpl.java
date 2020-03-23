package com.bit.project.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.project.model.entity.PaidVo;

@Repository
public class PaidDaoImpl implements PaidDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<PaidVo> selectAll_paid() throws Exception {
		return sqlSession.selectList("paid.selectAll_paid");
	}

	@Override
	public PaidVo selectOne_paid(int key) throws Exception {
		return sqlSession.selectOne("paid.selectOne_paid",key);
	}

	@Override
	public void insertOne_paid(PaidVo bean) throws Exception {
		sqlSession.insert("paid.insertOne_paid",bean);
	}

	@Override
	public int updateOne_paid(PaidVo bean) throws Exception {
		return sqlSession.update("paid.updateOne_paid",bean);
	}

	@Override
	public int deleteOne_paid(int key) throws Exception {
		return sqlSession.delete("paid.deleteOne_paid",key);
	}


}
