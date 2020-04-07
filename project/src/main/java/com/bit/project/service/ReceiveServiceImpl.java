package com.bit.project.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.project.common.Search;
import com.bit.project.model.ReceiveDao;
import com.bit.project.model.entity.ReceiveVo;

@Service
public class ReceiveServiceImpl implements ReceiveService {
	
	@Autowired
	ReceiveDao receiveDao;
	
	@Override
	public List<ReceiveVo> selectAll_receive(Search search) throws Exception {
		return receiveDao.selectAll_receive(search);
	}

	@Override
	public void selectOne_receive(int key, Model model) {
		try {
			model.addAttribute("bean",receiveDao.selectOne_receive(key));
			receiveDao.updateOne_receive(key);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void selectOne_receiveLimitOne(String key, Model model) {
		try {
			model.addAttribute("bean", receiveDao.selectOne_receiveLimitOne(key));
			System.out.println(key);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void deleteOne_receive(int key) {
		try {
			receiveDao.deleteOne_receive(key);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public int getReceiveListCnt(Search search) throws Exception {
		return receiveDao.getReceiveListCnt(search);
	}

	@Override
	public CharSequence select_receiveUnCnt(String msg) throws Exception {
		return receiveDao.select_receiveUnCnt(msg);
	}


}
