package com.bit.project.model;

import java.util.List;

import com.bit.project.model.entity.ClientVo;

public interface ClientDao {

	List<ClientVo> selectAll_client() throws Exception;
	ClientVo selectOne_client(int key) throws Exception;
	void insertOne_client(ClientVo bean) throws Exception;
	int updateOne_client(ClientVo bean) throws Exception;
	int deleteOne_client(int key) throws Exception;
	public ClientVo loginCheck(ClientVo bean) throws Exception;
	public ClientVo findId(ClientVo bean) throws Exception;
	public ClientVo findPw(ClientVo bean) throws Exception;
	
}
