package com.bit.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.project.model.ReceiveDao;
import com.bit.project.model.entity.ReceiveVo;

@Service
public class ReceiveServiceImpl implements ReceiveService {

	@Autowired
	ReceiveDao receiveDao;
	
	@Override
	public void selectAll_receive(Model model) {
		try {
			List<ReceiveVo> list=receiveDao.selectAll_receive();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void selectOne_receive(int key, Model model) {
		try {
			model.addAttribute("bean",receiveDao.selectOne_receive(key));
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


}