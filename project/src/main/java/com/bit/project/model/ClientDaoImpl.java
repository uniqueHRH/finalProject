package com.bit.project.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.project.model.entity.ClientVo;

@Repository
public class ClientDaoImpl implements ClientDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ClientVo> selectAll_client() throws Exception {
		return sqlSession.selectList("client.selectAll_client");
	}

	@Override
	public ClientVo selectOne_client(int key) throws Exception {
		return sqlSession.selectOne("client.selectOne_client",key);
	}

	@Override
	public void insertOne_client(ClientVo bean) throws Exception {
		System.out.println("sqlSession:"+sqlSession);
		sqlSession.insert("client.insertOne_client",bean);
	}

	@Override
	public int updateOne_client(ClientVo bean) throws Exception {
		return sqlSession.update("client.updateOne_client",bean);
	}

	@Override
	public int deleteOne_client(int key) throws Exception {
		return sqlSession.delete("client.deleteOne_client",key);
	}

	@Override
	public ClientVo loginCheck(ClientVo bean) throws Exception {
		return sqlSession.selectOne("client.login",bean);
	}

	@Override
	public ClientVo findId(ClientVo bean) throws Exception {
		return sqlSession.selectOne("client.findId", bean);
	}

	@Override
	public ClientVo findPw(ClientVo bean) throws Exception {
		return sqlSession.selectOne("client.findPw", bean);
	}

	@Override
	public int pwUpdate(ClientVo bean) throws Exception {
		return sqlSession.update("client.pwUpdate", bean);
	}

	


}
