package com.bit.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.project.model.BoardDao;
import com.bit.project.model.entity.BoardVo;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDao boardDao;
	
	@Override
	public void selectAll_tour(Model model) {
		try {
			List<BoardVo> list = boardDao.selectAll_tour();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void selectAll_tourCity(Model model) {
		try {
			List<BoardVo> list = boardDao.selectAll_tourCity();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void selectAll_tourTheme(Model model) {
		try {
			List<BoardVo> list = boardDao.selectAll_tourTheme();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void selectAll_review(Model model) {
		try {
			List<BoardVo> list = boardDao.selectAll_review();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
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
	public void selectAll_partner(Model model) {
		try {
			List<BoardVo> list = boardDao.selectAll_partner();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void selectAll_free(Model model) {
		try {
			List<BoardVo> list = boardDao.selectAll_free();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void selectAll_event(Model model) {
		try {
			List<BoardVo> list = boardDao.selectAll_event();
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
	public void selectOne_tour(int key, Model model) {
		try {
			model.addAttribute("bean",boardDao.selectOne_tour(key));
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
	public void selectOne_partner(int key, Model model) {
		try {
			boardDao.updateCnt(key);
			model.addAttribute("bean",boardDao.selectOne_partner(key));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public void selectOne_free(int key, Model model) {
		try {
			boardDao.updateCnt(key);
			model.addAttribute("bean",boardDao.selectOne_free(key));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public void selectOne_event(int key, Model model) {
		try {
			boardDao.updateCnt(key);
			model.addAttribute("bean",boardDao.selectOne_event(key));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public int countBoardListTotal() throws Exception {
		return boardDao.countBoardListTotal();
	}

	
	@Override
	public void insertOne_tour(BoardVo bean) {
		try {
			boardDao.insertOne_tour(bean);
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
	public void insertOne_partner(BoardVo bean) {
		try {
			boardDao.insertOne_partner(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void insertOne_free(BoardVo bean) {
		try {
			boardDao.insertOne_free(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void insertOne_event(BoardVo bean) {
		try {
			boardDao.insertOne_event(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateOne_tour(BoardVo bean) {
		try {
			boardDao.updateOne_tour(bean);
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
	public void updateOne_partner(BoardVo bean) {
		try {
			boardDao.updateOne_partner(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateOne_free(BoardVo bean) {
		try {
			boardDao.updateOne_free(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateOne_event(BoardVo bean) {
		try {
			boardDao.updateOne_event(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteOne_tour(int key) {
		try {
			boardDao.deleteOne_tour(key);
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
	public void deleteOne_partner(int key) {
		try {
			boardDao.deleteOne_partner(key);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteOne_free(int key) {
		try {
			boardDao.deleteOne_free(key);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteOne_event(int key) {
		try {
			boardDao.deleteOne_event(key);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
}
