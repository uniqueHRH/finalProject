package com.bit.project.model;

import java.util.List;

import com.bit.project.model.entity.GuideVo;

public interface GuideDao {

	List<GuideVo> selectAll_guide() throws Exception;
	GuideVo selectOne_guide(int key) throws Exception;
	void insertOne_guide(GuideVo bean) throws Exception;
	int updateOne_guide(GuideVo bean) throws Exception;
	int deleteOne_guide(int key) throws Exception;
	
}
