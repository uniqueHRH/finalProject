package com.bit.project.model;

import java.util.List;

import com.bit.project.model.entity.ClientVo;
import com.bit.project.model.entity.StaffVo;

public interface StaffDao {

	
	List<StaffVo> selectAll_staff() throws Exception;
	StaffVo selectOne_staff(int key) throws Exception;
	void insertOne_staff(StaffVo bean) throws Exception;
	int updateOne_staff(StaffVo bean) throws Exception;
	int deleteOne_staff(int key) throws Exception;
	public StaffVo loginCheck(StaffVo bean) throws Exception;
}
