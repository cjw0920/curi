package com.curi.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.curi.common.DBManager;
import com.curi.dto.BoardDTO;
import com.curi.dto.ProductDTO;
import com.curi.mybatis.SqlMapConfig;


public class ProductDAO {

	//Mybatis 셋팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
	//mapper에 접근 위한 SqlSession
	SqlSession sqlSession;
	
	//싱글톤으로 new 없이 사용하기 때문에 다른곳에서 new로 객체 생성 못하게 private으로 막음
	private ProductDAO() {}
	
	//싱글톤 패턴 - 객체생성 1회 실시 후 공유해서 사용
	//객체 생성 1회 실시
	private static ProductDAO instance = new ProductDAO();
	
	//외부에서 getInstance()를 활용하여 1회 실시한 객체를 공유
	public static ProductDAO getInstance() {
		return instance;
	}
	
	//실제 동작들
	
	//best 상품 목록 출력(index 페이지)
	public List<ProductDTO> bestView(){
		
		sqlSession = sqlSessionFactory.openSession();
		List<ProductDTO> bestlist = null;
		
		
		try {
			
			bestlist = sqlSession.selectList("bestView1");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		
		return bestlist;
	}
	
	
	//new 상품 목록 출력(index 페이지)
		public List<ProductDTO> newView(){
			
			sqlSession = sqlSessionFactory.openSession();
			List<ProductDTO> newlist = null;
			
			
			try {
				
				newlist = sqlSession.selectList("newView");
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			
			return newlist;
		}
	
		
		//신상품페이지 best1~3
		public List<ProductDTO> new_BestView(){
			
			sqlSession = sqlSessionFactory.openSession();
			List<ProductDTO> new_BestList = null;
			
			
			try {
				
				new_BestList = sqlSession.selectList("new_BestView");
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			
			return new_BestList;
		}
		
		//신상품페이지 1~4
				public List<ProductDTO> new_ListView1(){
					
					sqlSession = sqlSessionFactory.openSession();
					List<ProductDTO> new_BestList = null;
					
					
					try {
						
						new_BestList = sqlSession.selectList("new_ListView1");
						
						
					} catch (Exception e) {
						e.printStackTrace();
					}finally {
						sqlSession.close();
					}
					
					
					return new_BestList;
				}
		
		
				//신상품페이지 5~8
				public List<ProductDTO> new_ListView2(){
					
					sqlSession = sqlSessionFactory.openSession();
					List<ProductDTO> new_BestList = null;
					
					
					try {
						
						new_BestList = sqlSession.selectList("new_ListView2");
						
						
					} catch (Exception e) {
						e.printStackTrace();
					}finally {
						sqlSession.close();
					}
					
					
					return new_BestList;
				}		
				
				//신상품페이지 9~12
				public List<ProductDTO> new_ListView3(){
					
					sqlSession = sqlSessionFactory.openSession();
					List<ProductDTO> new_BestList = null;
					
					
					try {
						
						new_BestList = sqlSession.selectList("new_ListView3");
						
						
					} catch (Exception e) {
						e.printStackTrace();
					}finally {
						sqlSession.close();
					}
					
					
					return new_BestList;
				}	
				

				
				
				
				
				
				//카테고리페이지 best1~3
				public List<ProductDTO> BestView(String keyword){
					
					sqlSession = sqlSessionFactory.openSession();
					List<ProductDTO> new_BestList = null;
					
					
					try {
						new_BestList = sqlSession.selectList("BestView",keyword);
						
					} catch (Exception e) {
						e.printStackTrace();
					}finally {
						sqlSession.close();
					}
					
					
					return new_BestList;
				}
				
				//카테고리페이지 1~4
						public List<ProductDTO> ListView1(String keyword){
							
							sqlSession = sqlSessionFactory.openSession();
							List<ProductDTO> new_BestList = null;
							
							
							try {
								
								new_BestList = sqlSession.selectList("ListView1",keyword);
								
								
							} catch (Exception e) {
								e.printStackTrace();
							}finally {
								sqlSession.close();
							}
							
							
							return new_BestList;
						}
				
				
						//카테고리페이지 5~8
						public List<ProductDTO> ListView2(String keyword){
							
							sqlSession = sqlSessionFactory.openSession();
							List<ProductDTO> new_BestList = null;
							
							
							try {
								
								new_BestList = sqlSession.selectList("ListView2",keyword);
								
								
							} catch (Exception e) {
								e.printStackTrace();
							}finally {
								sqlSession.close();
							}
							
							
							return new_BestList;
						}		
						
						//카테고리페이지 9~12
						public List<ProductDTO> ListView3(String keyword){
							
							sqlSession = sqlSessionFactory.openSession();
							List<ProductDTO> new_BestList = null;
							
							
							try {
								
								new_BestList = sqlSession.selectList("ListView3",keyword);
								
								
							} catch (Exception e) {
								e.printStackTrace();
							}finally {
								sqlSession.close();
							}
							
							
							return new_BestList;
						}	
						
				
				
				
				
				
				
		
		//상품 Detail 페이지 
		public ProductDTO ProductDetailView(int p_code) {
			
			sqlSession = sqlSessionFactory.openSession();
			ProductDTO pDto = null;
			try {
				
				pDto = sqlSession.selectOne("ProductDetailView",p_code);
			
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return pDto;
		}
		
		
		
		public void ReplyCntPlus(int p_code) {
			sqlSession = sqlSessionFactory.openSession();
			try {
				sqlSession.update("pcPlus",p_code);
				sqlSession.commit();
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
		}
		
		
		
		public void ReplyCntMinus(int p_code) {
			sqlSession = sqlSessionFactory.openSession();
			try {
				sqlSession.update("pcMinus",p_code);
				sqlSession.commit();
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
		}
		
		
		public void GoodCntPlus(int p_code) {
			sqlSession = sqlSessionFactory.openSession();
			try {
				sqlSession.update("GoodCntPlus",p_code);
				sqlSession.commit();
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
		}
		
		
		
	/*Mybatis 사용하기전 DBManager와 Prepare Statement 방식으로 구현한 DAO 객체

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	ArrayList<ProductDTO> list = new ArrayList<>();
		

	public ArrayList<ProductDTO>bestView(){
		try {
			conn = DBManager.getConnection();
			String sql = "SELECT * FROM best_pro_view";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				String p_code = rs.getString("p_code");
				String p_name =rs.getString("p_name");
				int p_price = rs.getInt("p_price");
				String p_img = rs.getString("p_img");
				Date p_indate = rs.getDate("p_indate");
				
				ProductDTO pDto = new ProductDTO(p_code,p_name,p_price,p_img,p_indate);
				list.add(pDto);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			
		}
		return list;
	}
	*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
