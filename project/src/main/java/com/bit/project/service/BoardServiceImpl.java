package com.bit.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.project.model.BoardDao;
import com.bit.project.model.entity.BoardVo;
import com.bit.project.paging.Pagination;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDao boardDao;
	
	
	@Override
	public List<BoardVo> selectAll_review(Pagination pagination) throws Exception {
		return boardDao.selectAll_review(pagination);
	}

	
	@Override
	public void selectAll_reviewCity(Model model) {
		try {
			List<BoardVo> list = boardDao.selectAll_reviewCity();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	@Override
	public void selectAll_reviewTheme(Model model) {
		try {
			List<BoardVo> list = boardDao.selectAll_reviewTheme();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	@Override
	public void select_land(int key, Model model) {
		try {
			model.addAttribute("bean",boardDao.select_land(key));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	@Override
	public void selectOne_review(int key, Model model) {
		try {
			boardDao.updateCnt(key);
			model.addAttribute("bean",boardDao.selectOne_review(key));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	
	@Override
	public void insertOne_review(BoardVo bean) {
		try {
			boardDao.insertOne_review(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	@Override
	public void updateOne_review(BoardVo bean) {
		try {
			boardDao.updateOne_review(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteOne_review(int key) {
		try {
			boardDao.deleteOne_review(key);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	@Override
	public int getBoardListCnt() throws Exception {
		return boardDao.getBoardListCnt();
	}

	
}
