package com.babo.anim;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.babo.anim.EmployeesVO;

public class EmployeesDAO {
	public int insert(EmployeesVO vo) { // Create_rud
		int result = 0;
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		String query="insert into Employees values(?, ?, ?, ?, sysdate, ?, ?, ?, ?, ?)";

		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, vo.getEmployeeId());
			pstmt.setString(2, vo.getIrum());
			pstmt.setString(3, vo.getEmail());
			pstmt.setString(4, vo.getPhoneName());
			pstmt.setString(5, vo.getJobId());
			pstmt.setDouble(6, vo.getSalary());
			pstmt.setDouble(7, vo.getCommissionPct());
			pstmt.setInt(8, vo.getManagerId());
			pstmt.setInt(9, vo.getDepartmentID());

			result = pstmt.executeUpdate();

		}catch (Exception e) {
			System.out.println("Unkonwn error");
			e.printStackTrace();
		}finally {
			resouseClose(pstmt, conn);
		}
		return result;
	}
	
	public EmployeesVO selectOne(int departId) { // c_Read_ud ->select
		EmployeesVO result = null;
		
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query="select * from Employees where departId =?";

		try {
			
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, departId);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				result = new EmployeesVO();

			}

		}catch (Exception e) {
			System.out.println("Unkonwn error");
			e.printStackTrace();
		}finally {
			resouseClose(rs, pstmt, conn);
		}
		return result;
		
	}
	
	public List<EmployeesVO> selectAll() { // c_Read_ud ->select
		List<EmployeesVO> result = new ArrayList<EmployeesVO>();
		
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query="select * from Employees";

		try {
			
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				EmployeesVO vo = new EmployeesVO();
				vo.setCommissionPct(rs.getDouble("commissionPct"));
				vo.setDepartmentID(rs.getInt("departmentID"));
				vo.setEmail(rs.getString("email"));
				vo.setEmployeeId(rs.getInt("employeeId"));
				vo.setHierDate(rs.getString("hierDate"));
				vo.setIrum(rs.getString("irum"));
				vo.setJobId(rs.getString("jobId"));
				vo.setManagerId(rs.getInt("managerId"));
				vo.setPhoneName(rs.getString("phoneName"));
				vo.setSalary(rs.getDouble("salary"));
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
	
	public int update(EmployeesVO vo) {	// cr_Update_ud
		int result = 0;
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query="update Employees set employeeId =?, irum =?, email=?, phonenumber=?, jobid=?"
				+ ", salary=?, commissionpct, managementid=?, departmentid=? where departmentId = ?";

		try {

			
//			pstmt.setInt(1, vo.EmployeeId());
//			pstmt.setString(2, vo.Irum());
//			pstmt.setString(3, vo.Email());
//			pstmt.setString(4, vo.PhoneName());
//			pstmt.setString(5, vo.JobId());
//			pstmt.setDouble(6, vo.Salary());
//			pstmt.setDouble(7, vo.CommissionPct());
//			pstmt.setInt(8, vo.ManagerId());
//			pstmt.setInt(9, vo.DepartmentID());
			
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
		String query="delete from Employees where departmentId = ?";
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
		String query = "select count(*) as dataCnt from Employees";

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
