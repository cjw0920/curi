package com.curi.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.curi.dto.ProductCommentDTO;
import com.curi.dto.ReplyDTO;
import com.curi.mybatis.SqlMapConfig;

public class ProductCommentDAO {
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
	SqlSession sqlSession;
	
	private ProductCommentDAO() {}
	
	private static ProductCommentDAO instance = new ProductCommentDAO();
	
	public static ProductCommentDAO getInstance() {
		return instance;
	}
	

	
	
	public void Insert(ProductCommentDTO pDto){
		sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.insert("p_comment_Insert",pDto);
			sqlSession.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	
	
	
	
	
}
