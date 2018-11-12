package com.curi.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.curi.common.DBManager;
import com.curi.dto.MemberDTO;
import com.curi.dto.ProductDTO;
import com.curi.mybatis.SqlMapConfig;

public class MemberDAO{
	
		SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
		
		SqlSession sqlSession;
		
		private MemberDAO() {}
		
		private static MemberDAO instance = new MemberDAO();
		
		public static MemberDAO getInstance() {
			return instance;
		}
		
	
	
	
	
		public int inserMember(MemberDTO mDto) {
			int result = 0;
			sqlSession = sqlSessionFactory.openSession();
			try {
				result = sqlSession.insert("inserMember",mDto);
				sqlSession.commit();
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return result;
		}
	
	
		public String confirmId(String userid) {
			String result="";
			sqlSession = sqlSessionFactory.openSession();
			try {
				result = sqlSession.selectOne("confirmId",userid);
				if(result != null) {
					result = "-1";
				}else {
					result="1";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return result;
		}
	
	
		public String confirmPw(String userid,String userpw) {
			String result="";
			sqlSession = sqlSessionFactory.openSession();
			MemberDTO mDto = new MemberDTO();
			mDto.setId(userid);
			mDto.setPw(userpw);
			try {
				result = sqlSession.selectOne("confirmPw",mDto);
				
				if(result != null) {
					result = "-1";
				}else {
					result= "1";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return result;
		}
	
	
		public MemberDTO loginCheck(String uid, String upw){
			sqlSession = sqlSessionFactory.openSession();
			MemberDTO mDto = new MemberDTO();
			mDto.setId(uid);
			mDto.setPw(upw);
			
			try {
				mDto = sqlSession.selectOne("loginCheck",mDto);
				sqlSession.commit();
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return mDto;
		}
	
	
		public int updateMember(MemberDTO mDto) {
			int result = 0;
			sqlSession = sqlSessionFactory.openSession();
			
			try {
				result = sqlSession.update("updateMember",mDto);
				sqlSession.commit();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			return result;
		}
	
		
		public int updatePw(String id, String pw) {
			int result =0;
			sqlSession = sqlSessionFactory.openSession();
			
			MemberDTO mDto = new MemberDTO();
			mDto.setId(id);
			mDto.setPw(pw);
			
			try {
				
				result = sqlSession.update("updatePw",mDto);
				sqlSession.commit();
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return result;
		}
	
	
		public int deleteMember(String userid) {
			int flag = 0;
			
			sqlSession = sqlSessionFactory.openSession();
			try {
				flag =sqlSession.delete("deleteMember",userid);
				sqlSession.commit();
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			
			
			return flag;
		}
	
	
	
	/*Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	ArrayList<MemberDTO> list = new ArrayList<>();
	int result=0;
	MemberDTO mDto;
	
	public int inserMember(MemberDTO mDto) {
		
		try {
			conn=DBManager.getConnection();
			String sql = "INSERT INTO member(id,pw,name,phone,zipcode,addr1,addr2,email) VALUES(?,?,?,?,?,?,?,?)";
			
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, mDto.getId());
			pstmt.setString(2, mDto.getPw());
			pstmt.setString(3, mDto.getName());
			pstmt.setString(4, mDto.getPhone());
			pstmt.setString(5, mDto.getZipcode());
			pstmt.setString(6, mDto.getAddr1());
			pstmt.setString(7, mDto.getAddr2());
			pstmt.setString(8, mDto.getEmail());
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}
	
	//로그인시 회원여부 체크
	public MemberDTO loginCheck(String uid, String upw){
		try {
			conn = DBManager.getConnection();
			String sql = "SELECT * FROM member WHERE id=? AND pw =?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			pstmt.setString(2, upw);
			
			rs= pstmt.executeQuery();
			
			while(rs.next()) {
				String id = rs.getString("id"); 
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				String zipcode = rs.getString("zipcode");
				String addr1 = rs.getString("addr1");
				String addr2 = rs.getString("addr2");
				Date regdate = rs.getDate("regdate");
				mDto = new MemberDTO(id,pw,name,phone,email,zipcode,addr1,addr2,regdate);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return mDto;
	}
	
	public int updateMember(MemberDTO mDto) {
		
		try {
			conn = DBManager.getConnection();
			
			String sql = "UPDATE member set pw =?, name=?, phone=?, zipcode=?, addr1=?, addr2=?, email=? where id=? ";
				
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mDto.getPw());
			pstmt.setString(2, mDto.getName());
			pstmt.setString(3, mDto.getPhone());
			pstmt.setString(4, mDto.getZipcode());
			pstmt.setString(5, mDto.getAddr1());
			pstmt.setString(6, mDto.getAddr2());
			pstmt.setString(7, mDto.getEmail());
			pstmt.setString(8, mDto.getId());
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		return result;
	}
	
	
	public String confirmId(String userid) {
		String msg="";
		try {
			conn=DBManager.getConnection();
			String sql="SELECT id FROM member WHERE id="+userid;
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				msg = "-1";
			}else {
				msg="1";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		return msg;
	}
	
	public int confirmPw(String userid,String userpw) {
		int msg=0;
		try {
			conn=DBManager.getConnection();
			String sql="SELECT id,pw FROM member WHERE id=? AND pw=? ";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, userpw);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				msg = -1;
			}else {
				msg=1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		return msg;
	}
	
	public int updatePw(String id, String pw) {
		int result =0;
		try {
			
			conn=DBManager.getConnection();
			String sql="UPDATE member SET pw=? where id=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pw);
			pstmt.setString(2, id);
			
			result=pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}*/
}