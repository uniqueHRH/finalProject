package com.bit.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.project.model.ReplyDao;
import com.bit.project.model.entity.ReplyVo;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyDao replyDao;
	
	@Override
	public void selectAll_reply(int key, Model model) {
		try {
			List<ReplyVo> list=replyDao.selectAll_reply(key);
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void insertOne_reply(ReplyVo bean) {
		try {
			replyDao.insertOne_reply(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateOne_reply(ReplyVo bean) {
		try {
			replyDao.updateOne_reply(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteOne_reply(int key) {
		try {
			replyDao.deleteOne_reply(key);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
}
