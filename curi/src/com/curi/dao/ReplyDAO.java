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
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}
	
	public void replyDelete(String rno){
		sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.selectList("replyDelete",rno);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	
	
	public void replyInsert(ReplyDTO rDto){
		sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.selectList("replyInsert",rDto);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	
	public void replyUpdate(ReplyDTO rDto){
		sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.update("replyUpdate",rDto);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	
}
