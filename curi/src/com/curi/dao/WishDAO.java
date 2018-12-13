package com.curi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.curi.dto.ProductCommentDTO;
import com.curi.dto.ReplyDTO;
import com.curi.dto.WishDTO;
import com.curi.mybatis.SqlMapConfig;

public class WishDAO {
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	SqlSession sqlSession;
	
	private WishDAO() {}
	private static WishDAO instance = new WishDAO();
	public static WishDAO getInstance() {
		return instance;
	}
	
	public void Insert(WishDTO wDto){
		sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.insert("WishInsert",wDto);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	
	public void Delete(String wno){
		sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.insert("WishDelete",wno);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	
	
	public List<WishDTO> WishListALL(String id){
		List<WishDTO> list = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			list = sqlSession.selectList("Wishlist",id);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}
}
