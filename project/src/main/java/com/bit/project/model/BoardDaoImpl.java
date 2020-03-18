package com.bit.project.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.project.model.entity.BoardVo;

@Repository
public class BoardDaoImpl implements BoardDao {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<BoardVo> selectAll_tour() throws Exception {
		return sqlSession.selectList("board.selectAll_tour");
	}

	@Override
	public List<BoardVo> selectAll_tourCity() throws Exception {
		return sqlSession.selectList("board.selectAll_tourCity");
	}

	@Override
	public List<BoardVo> selectAll_tourTheme() throws Exception {
		return sqlSession.selectList("board.selectAll_tourTheme");
	}

	@Override
	public List<BoardVo> selectAll_review() throws Exception {
		return sqlSession.selectList("board.selectAll_review");
	}

	@Override
	public List<BoardVo> selectAll_reviewCity() throws Exception {
		return sqlSession.selectList("board.selectAll_reviewCity");
	}

	@Override
	public List<BoardVo> selectAll_reviewTheme() throws Exception {
		return sqlSession.selectList("board.selectAll_reviewTheme");
	}

	@Override
	public List<BoardVo> selectAll_partner() throws Exception {
		return sqlSession.selectList("board.selectAll_partner");
	}

	@Override
	public List<BoardVo> selectAll_free() throws Exception {
		return sqlSession.selectList("board.selectAll_free");
	}

	@Override
	public List<BoardVo> selectAll_event() throws Exception {
		return sqlSession.selectList("board.selectAll_event");
	}

	@Override
	public BoardVo selectOne_tour(int key) throws Exception {
		return sqlSession.selectOne("board.selectOne_tour",key);
	}
	
//	update 페이지 나라 조회
	@Override
	public BoardVo select_land(int key) throws Exception {
		return sqlSession.selectOne("board.select_land",key);
	}

	@Override
	public BoardVo selectOne_review(int key) throws Exception {
		return sqlSession.selectOne("board.selectOne_review",key);
	}

	@Override
	public BoardVo selectOne_partner(int key) throws Exception {
		return sqlSession.selectOne("board.selectOne_partner",key);
	}

	@Override
	public BoardVo selectOne_free(int key) throws Exception {
		return sqlSession.selectOne("board.selectOne_free",key);
	}

	@Override
	public BoardVo selectOne_event(int key) throws Exception {
		return sqlSession.selectOne("board.selectOne_event",key);
	}

/* 페이징 */
	@Override
	public int countBoardListTotal() throws Exception {
		return sqlSession.selectOne("board.countBoardList");
	}

	@Override
	public void insertOne_tour(BoardVo bean) throws Exception {
		sqlSession.insert("board.insertOne_tour",bean);
	}

	@Override
	public void insertOne_review(BoardVo bean) throws Exception {
		sqlSession.insert("board.insertOne_review",bean);
	}

	@Override
	public void insertOne_partner(BoardVo bean) throws Exception {
		sqlSession.insert("board.insertOne_partner",bean);
	}

	@Override
	public void insertOne_free(BoardVo bean) throws Exception {
		sqlSession.insert("board.insertOne_free",bean);
	}

	@Override
	public void insertOne_event(BoardVo bean) throws Exception {
		sqlSession.insert("board.insertOne_event",bean);
	}

	@Override
	public int updateOne_tour(BoardVo bean) throws Exception {
		return sqlSession.update("board.updateOne_tour",bean);
	}

	@Override
	public int updateOne_review(BoardVo bean) throws Exception {
		return sqlSession.update("board.updateOne_review",bean);
	}

	@Override
	public int updateOne_partner(BoardVo bean) throws Exception {
		return sqlSession.update("board.updateOne_partner",bean);
	}

	@Override
	public int updateOne_free(BoardVo bean) throws Exception {
		return sqlSession.update("board.updateOne_free",bean);
	}

	@Override
	public int updateOne_event(BoardVo bean) throws Exception {
		return sqlSession.update("board.updateOne_event",bean);
	}

	@Override
	public int deleteOne_tour(int key) throws Exception {
		return sqlSession.delete("board.deleteOne_tour",key);
	}

	@Override
	public int deleteOne_review(int key) throws Exception {
		return sqlSession.delete("board.deleteOne_review",key);
	}

	@Override
	public int deleteOne_partner(int key) throws Exception {
		return sqlSession.delete("board.deleteOne_partner",key);
	}

	@Override
	public int deleteOne_free(int key) throws Exception {
		return sqlSession.delete("board.deleteOne_free",key);
	}

	@Override
	public int deleteOne_event(int key) throws Exception {
		return sqlSession.delete("board.deleteOne_event",key);
	}

	@Override
	public int updateCnt(int key) throws Exception {
		return sqlSession.update("board.updateCnt",key);
	}

	
}
