package com.bit.project.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.project.common.Search;
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
	public void selectOne_tour(Model model, int tour_no, HttpServletResponse res, HttpServletRequest req) {
		try {
			model.addAttribute("bean",tourDao.selectOne_tour(tour_no));
			Cookie[] cookies = req.getCookies();
			List<String> coolist = new ArrayList<>();
			if(cookies.length>0) {
				
				for(int i=0; i<cookies.length; i++) {
					Cookie cookie = new Cookie("imgs",tourDao.selectOne_tour(tour_no).getMainimg());
					Cookie idx = new Cookie("idx", Integer.toString(tourDao.selectOne_tour(tour_no).getTour_no()));
					System.out.println("url : "+cookie.getValue());
					System.out.println("idx : "+idx.getValue());
					cookie.setMaxAge(60*60);
					cookie.setPath("/");
					res.addCookie(cookie);
					idx.setMaxAge(60*60);
					idx.setPath("/");
					res.addCookie(idx);
					
					coolist.add(cookies[i].getValue());
					System.out.println("coolist : " + coolist.get(i));
				}
				
			}else {
				for(int i=0; i<cookies.length; i++) {
					if(!coolist.contains(cookies[i].getValue())) {
						Cookie cookie = new Cookie("imgs"+i,tourDao.selectOne_tour(tour_no).getMainimg());
						Cookie idx = new Cookie("idx", Integer.toString(tourDao.selectOne_tour(tour_no).getTour_no()));
						System.out.println("1 : "+cookie.getValue());
						System.out.println("2 : "+idx.getValue());
						cookie.setMaxAge(60);
						cookie.setPath("/");
						res.addCookie(cookie);
						idx.setMaxAge(60);
						idx.setPath("/");
						res.addCookie(idx);
					}else {
						System.out.println("3rd : "+cookies[i].getValue());
					}
				}
			}
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

	@Override
	public List<TourVo> selectAll_tour(Search search) throws Exception {
		return tourDao.selectAll_tour(search);
	}
	@Override
	public List<TourVo> selectAll_tour_arrayland(Search search) throws Exception {
		return tourDao.selectAll_tour_arrayland(search);
	}
	@Override
	public List<TourVo> selectAll_tour_arraycountry(Search search) throws Exception {
		return tourDao.selectAll_tour_arraycountry(search);
	}

	@Override
	public int getallTourListCnt(Search search) throws Exception {
		return tourDao.getallTourListCnt(search);
	}

	@Override
	public List<TourVo> homeSearch(Search search) throws Exception {
		return tourDao.homeSearch(search);
	}

	@Override
	public void updateOne_tour(TourVo bean) {
		try {
			tourDao.updateOne_tour(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void selectAll_recomm1(Model model) {
		List<TourVo> list;
		try {
			list = tourDao.selectAll_recomm1();
			model.addAttribute("list1",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	@Override
	public void selectAll_recomm2(Model model) {
		List<TourVo> list;
		try {
			list = tourDao.selectAll_recomm2();
			model.addAttribute("list2",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	@Override
	public void selectAll_recomm3(Model model) {
		List<TourVo> list;
		try {
			list = tourDao.selectAll_recomm3();
			model.addAttribute("list3",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
