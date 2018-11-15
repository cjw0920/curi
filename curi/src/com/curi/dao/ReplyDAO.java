package com.curi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.curi.dto.ReplyDTO;
import com.curi.mybatis.SqlMapConfig;

public class ReplyDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	SqlSession sqlSession;
	
	private ReplyDAO() {}
	private static ReplyDAO instance = new ReplyDAO();
	public static ReplyDAO getInstance() {
		return instance;
	}
	
	
	public List<ReplyDTO> replyListALL(String bno){
		List<ReplyDTO> list = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			list = sqlSession.selectList("replyListAll",bno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}
	
}
