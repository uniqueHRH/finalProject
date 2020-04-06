package com.bit.project.model;

import java.util.List;

import com.bit.project.model.entity.PaidVo;
import com.bit.project.model.entity.TourVo;

public interface TourDao {
	
	List<TourVo> selectAll_eastasia() throws Exception;
	List<TourVo> selectAll_southeastasia() throws Exception;
	List<TourVo> selectAll_america() throws Exception;
	List<TourVo> selectAll_europe() throws Exception;
	List<TourVo> selectAll_pacific() throws Exception;
	List<TourVo> selectAll_africa() throws Exception;
	List<TourVo> selectAll_themetour() throws Exception;
	List<TourVo> selectAll_themesnap() throws Exception;
	
	TourVo selectOne_tour(int tour_no) throws Exception;
	void insertOne(PaidVo bean) throws Exception;
}
