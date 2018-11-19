package com.curi.dao;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.curi.dto.BoardDTO;
import com.curi.dto.CriteriaDTO;
import com.curi.mybatis.SqlMapConfig;

public class BoardDAO {

	
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	SqlSession sqlSession;
	
	private BoardDAO() {}
	private static BoardDAO instance = new BoardDAO();
	public static BoardDAO getInstance() {
		return instance;
	}
	
	public List<BoardDTO> boardListAll(CriteriaDTO criDto){
			sqlSession = sqlSessionFactory.openSession();
			List<BoardDTO> list = new ArrayList<>();
			
			try {
				
				list = sqlSession.selectList("boardlist",criDto);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			
			return list;
	}
	
	public List<BoardDTO> boardSearch(CriteriaDTO criDto){
		sqlSession = sqlSessionFactory.openSession();
		List<BoardDTO> list = null;
		
		try {
			list = sqlSession.selectList("searchList",criDto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
}
	
	
	public int totalCount(CriteriaDTO cridto) {
		sqlSession = sqlSessionFactory.openSession();
		int result =0;
		try {
			
			result = sqlSession.selectOne("countPaging",cridto);
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}

	public BoardDTO boardDetailView(String bno) {
		
		sqlSession = sqlSessionFactory.openSession();
		BoardDTO bDto = null;
		try {
			
			bDto = sqlSession.selectOne("boardDetailView",bno);
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return bDto;
	}
	
	public void ViewCnt(String bno,HttpSession	countSession) {
		
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			long update_time =0;
			int result = 0;
			//죄쇠수 증가시 생기는 read_time_게시글 번호가 없으면 
			//현재 처음 조회수를 1증가하는 경우
		
			if(countSession.getAttribute("read_time_"+bno)!=null) {
				update_time=(long)countSession.getAttribute("read_time_"+bno);
			}
			
			//현재시간 담기
			long current_time = System.currentTimeMillis();
			
			//현재시간과 조회수 1증가 시간 비교해 24시간1일이 지나면 조회수 1증가
			if(current_time-update_time>10000) {
				result = sqlSession.update("viewCnt",bno);
				sqlSession.commit();
			}
			
			//조회수 1증가시간 session에 담는다.
			countSession.setAttribute("read_time_"+bno, current_time);
			
			//session저장소
			//read_time_50이라는 방을 하나 만들고
			//현재 시간을 저장(10시 30분 5초)
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		
	}
	
	public int boardInsert(BoardDTO bDto) {
		sqlSession = sqlSessionFactory.openSession();
		int result = 0;
		try {
			result =sqlSession.insert("boardInsert",bDto);
			sqlSession.commit();
			
			
		}catch (Exception e) {
			// TODO: handle exception
		}finally {
			sqlSession.close();
		}
		return result;
	}
	
	public int boardUpdate(BoardDTO bDto) {
		sqlSession = sqlSessionFactory.openSession();
		int result = 0;
		try {
			result =sqlSession.update("boardUpdate",bDto);
			sqlSession.commit();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}
	
	
	public int boardDelete(int bno) {
		sqlSession = sqlSessionFactory.openSession();
		int result = 0;
		try {
			result =sqlSession.update("boardDelete",bno);
			sqlSession.commit();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}
	
	
	
	public void boardReplyCntPlus(int bno) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.update("rpPlus",bno);
			sqlSession.commit();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	
	
	public void boardReplyCntMinus(int bno) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.update("rpMinus",bno);
			sqlSession.commit();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	
}
