package com.bit.project.model;

import java.util.List;

import com.bit.project.model.entity.PaidVo;
import com.bit.project.model.entity.TourVo;

public interface TourDao {
	
	List<TourVo> selectAll_eastasia() throws Exception;
	TourVo selectOne_eastasia(int tour_no) throws Exception;
	void insertOne(PaidVo bean) throws Exception;
}
