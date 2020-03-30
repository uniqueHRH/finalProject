package com.bit.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.project.model.ClientDao;
import com.bit.project.model.entity.ClientVo;

@Service
public class ClientServiceImpl implements ClientService {

	@Autowired
	ClientDao clientDao;
	
	@Override
	public void selectAll_client(Model model) {
		try {
			List<ClientVo> list=clientDao.selectAll_client();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void selectOne_client(Model model, int client_no) {
		try {
			model.addAttribute("bean",clientDao.selectOne_client(client_no));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void insertOne_client(ClientVo bean) {
		try {
			clientDao.insertOne_client(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateOne_client(ClientVo bean) {
		try {
			clientDao.updateOne_client(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteOne_client(int key) {
		try {
			clientDao.deleteOne_client(key);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public ClientVo loginCheck(ClientVo bean) throws Exception {
		return clientDao.loginCheck(bean);
	}

	@Override
	public ClientVo findId(ClientVo bean) throws Exception {
		return clientDao.findId(bean);
	}

	@Override
	public ClientVo findPw(ClientVo bean) throws Exception {
		return clientDao.findPw(bean);
	}

	@Override
	public void pwUpdate(ClientVo bean) throws Exception {
		try {
			clientDao.pwUpdate(bean);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public ClientVo nickDupli(ClientVo bean) throws Exception {
		return clientDao.nickDupli(bean);
	}

	@Override
	public ClientVo idDupli(ClientVo bean) throws Exception {
		return clientDao.idDupli(bean);
	}

	@Override
	public void changeInfo(ClientVo bean) throws Exception {
		try {
			clientDao.changeInfo(bean);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	

	

}

	