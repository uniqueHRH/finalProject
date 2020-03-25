package com.bit.project.service;

import org.springframework.ui.Model;

import com.bit.project.model.entity.ClientVo;

public interface ClientService {

	void selectAll_client(Model model);
	void selectOne_client(Model model,int client_no);
	void insertOne_client(ClientVo bean);
	void updateOne_client(ClientVo bean);
	void deleteOne_client(int key);
	public ClientVo loginCheck(ClientVo bean) throws Exception;
	public ClientVo findId(ClientVo bean) throws Exception;
	public ClientVo findPw(ClientVo bean) throws Exception;
	void pwUpdate(ClientVo bean) throws Exception;
}
