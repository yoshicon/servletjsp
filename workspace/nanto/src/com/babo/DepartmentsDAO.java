package com.babo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class DepartmentsDAO {
	
	public int insert(DepartmentsVO vo) { // Create_rud
		int result = 0;
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		String query="insert into departments values(?, ?, ?, ?)";

		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, vo.getDepartId());
			pstmt.setString(2, vo.getDepartmentName());
			pstmt.setInt(3, vo.getManaId());
			pstmt.setInt(4, vo.getLocId());

			result = pstmt.executeUpdate();

		}catch (Exception e) {
			System.out.println("Unkonwn error");
			e.printStackTrace();
		}finally {
			resouseClose(pstmt, conn);
		}
		return result;
	}
	
	public DepartmentsVO selectOne(int departId) { // c_Read_ud ->select
		DepartmentsVO result = null;
		
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query="select * from departments where departId =?";

		try {
			
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, departId);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				result = new DepartmentsVO();
				result.setDepartId((rs.getInt("departmentid")));
				result.setDepartmentName(rs.getString("departname"));
				result.setManaId(rs.getInt("manaid"));
				result.setLocId(rs.getInt("locid"));
			}

		}catch (Exception e) {
			System.out.println("Unkonwn error");
			e.printStackTrace();
		}finally {
			resouseClose(rs, pstmt, conn);
		}
		return result;
		
	}
	
	public List<DepartmentsVO> selectAll() { // c_Read_ud ->select
		List<DepartmentsVO> result = new ArrayList<DepartmentsVO>();
		
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query="select * from departments";

		try {
			
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				DepartmentsVO vo = new DepartmentsVO();
				vo.setDepartId((rs.getInt("departmentid")));
				vo.setDepartmentName(rs.getString("departname"));
				vo.setManaId(rs.getInt("manaid"));
				vo.setLocId(rs.getInt("locid"));
				result.add(vo);
			}

		}catch (Exception e) {
			System.out.println("Unkonwn error");
			e.printStackTrace();
		}finally {
			resouseClose(rs, pstmt, conn);
		}
		return result;
		
	}
	
	public int update(DepartmentsVO vo) {	// cr_Update_ud
		int result = 0;
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query="update departments set departName =?, locId =?, manaId=? where departmentId = ?";

		try {
			pstmt.setString(1, vo.getDepartmentName());
			pstmt.setInt(2, vo.getLocId());
			pstmt.setInt(3, vo.getManaId());
			pstmt.setInt(4, vo.getDepartId());
			
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
		}catch (SQLException e) {
			System.out.println("Unkonwn error");
			e.printStackTrace();
		}finally {
			resouseClose(rs, pstmt, conn);
		}
		return result;
	}
	
	public int delete(int departId) {	// cru_Delete
		int result = 0;

		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query="delete from departments where departmentId = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, departId);
			rs = pstmt.executeQuery();
		}catch (Exception e) {
			System.out.println("Unkonwn error");
			e.printStackTrace();
		}finally {
			resouseClose(rs, pstmt, conn);
		}
		return result;
	}
	
	
	
	public int selectCnt() { // c_Read_ud ->select
		int result = 0;
		
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "select count(*) as dataCnt from departments";

		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next())
				result = rs.getInt("dataCnt");

		}catch (Exception e) {
			System.out.println("Unkonwn error");
			e.printStackTrace();
		}finally {
			resouseClose(rs, pstmt, conn);
		}
		return result;
	}

	
	/////////////////////////////////////////////
	

	Connection getConnection() {
		Connection conn = null;
		String user = "test";
		String pw = "t123";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, pw);
		} catch (Exception e) {System.out.println("db연결 실패\n");}
		System.out.println("Database에 연결되었습니다.\n");
		
		return conn;
	}
	
	void resouseClose(PreparedStatement ps, Connection con) {

		if(ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {}
		}
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {}
		}
	}
	
	void resouseClose(ResultSet rs, PreparedStatement ps, Connection con) {
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {}
		}
		if(ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {}
		}
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {}
		}
	}
}
