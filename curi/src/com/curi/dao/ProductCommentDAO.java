package com.curi.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.curi.mybatis.SqlMapConfig;

public class ProductCommentDAO {
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
	SqlSession sqlSession;
	
	private ProductCommentDAO() {}
	
	private static ProductCommentDAO instance = new ProductCommentDAO();
	
	public static ProductCommentDAO getInstance() {
		return instance;
	}
	
	
	
	
	
	
	
	
	
	
}
