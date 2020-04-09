package com.bit.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.project.model.TourDao;
import com.bit.project.model.entity.PaidVo;
import com.bit.project.model.entity.TourVo;

@Service
public class TourServiceImpl implements TourService{

	@Autowired
	TourDao tourDao;
	
	
	@Override
	public void selectAll_eastasia(Model model) {
	
		try {
			List<TourVo> list = tourDao.selectAll_eastasia();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void selectOne_tour(Model model, int tour_no) {
		try {
			model.addAttribute("bean",tourDao.selectOne_tour(tour_no));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void insertOne_tour(PaidVo bean) {
		try {
			tourDao.insertOne(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void selectAll_southeastasia(Model model) {
		try {
			List<TourVo> list = tourDao.selectAll_southeastasia();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void selectAll_america(Model model) {
		try {
			List<TourVo> list = tourDao.selectAll_america();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void selectAll_europe(Model model) {
		try {
			List<TourVo> list = tourDao.selectAll_europe();
			model.addAttribute("list",list);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	@Override
	public void selectAll_pacific(Model model) {
		try {
			List<TourVo> list = tourDao.selectAll_pacific();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void selectAll_africa(Model model) {
		try {
			List<TourVo> list = tourDao.selectAll_africa();
			model.addAttribute("list",list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void selectAll_themetour(Model model) {
		List<TourVo> list;
		try {
			list = tourDao.selectAll_themetour();
			model.addAttribute("list",list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void selectAll_themesnap(Model model) {
		List<TourVo> list;
		try {
			list = tourDao.selectAll_themesnap();
			model.addAttribute("list",list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void selectAll_themeactivity(Model model) {
		List<TourVo> list;
		try {
			list = tourDao.selectAll_themeactivity();
			model.addAttribute("list",list);		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public void selectAll_themefood(Model model) {
		List<TourVo> list;
		try {
			list = tourDao.selectAll_themefood();
			model.addAttribute("list",list);		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public void selectAll_thememovie(Model model) {
		List<TourVo> list;
		try {
			list = tourDao.selectAll_thememovie();
			model.addAttribute("list",list);		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public void selectAll_themesports(Model model) {
		List<TourVo> list;
		try {
			list = tourDao.selectAll_themesports();
			model.addAttribute("list",list);		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
