package com.bit.project.model;

import java.util.List;

import com.bit.project.model.entity.EastAsiaVo;

public interface EastAsiaDao {
	
	List<EastAsiaVo> selectAll_eastasia() throws Exception;
	EastAsiaVo selectOne_eastasia(int tour_no) throws Exception;
}
