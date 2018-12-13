package com.curi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.curi.dto.CartDTO;
import com.curi.dto.ProductCommentDTO;
import com.curi.dto.ReplyDTO;
import com.curi.dto.WishDTO;
import com.curi.mybatis.SqlMapConfig;

public class CartDAO {
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	SqlSession sqlSession;
	
	private CartDAO() {}
	private static CartDAO instance = new CartDAO();
	
	public static CartDAO getInstance() {
		return instance;
	}

	

	public void Insert(CartDTO cDto){
		sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.insert("CartInsert",cDto);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	
	public List<CartDTO> CartListALL(String user){
		List<CartDTO> list = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			list = sqlSession.selectList("Cartlist",user);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}
	
	
	public void Delete(String cno){
		sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.delete("CartDelete",cno);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	
	
}
