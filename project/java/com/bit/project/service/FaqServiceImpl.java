package com.bit.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.project.model.FaqDao;
import com.bit.project.model.entity.FaqVo;

@Service
public class FaqServiceImpl implements FaqService {

	@Autowired
	FaqDao faqDao;
	
	@Override
	public void selectAll_faq(Model model) {
		try {
			List<FaqVo> list=faqDao.selectAll_faq();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void selectOne_faq(int key, Model model) {
		try {
			model.addAttribute("bean",faqDao.selectOne_faq(key));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void insertOne_faq(FaqVo bean) {
		try {
			faqDao.insertOne_faq(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateOne_faq(FaqVo bean) {
		try {
			faqDao.updateOne_faq(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteOne_faq(int key) {
		try {
			faqDao.deleteOne_faq(key);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


}
