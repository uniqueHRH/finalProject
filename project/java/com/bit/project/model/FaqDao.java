package com.bit.project.model;

import java.util.List;

import com.bit.project.model.entity.FaqVo;

public interface FaqDao {

	List<FaqVo> selectAll_faq() throws Exception;
	FaqVo selectOne_faq(int key) throws Exception;
	void insertOne_faq(FaqVo bean) throws Exception;
	int updateOne_faq(FaqVo bean) throws Exception;
	int deleteOne_faq(int key) throws Exception;
}
