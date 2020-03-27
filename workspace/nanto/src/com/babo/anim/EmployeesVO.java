package com.babo.anim;

import java.io.Serializable;

//EMPLOYEEID    NOT NULL NUMBER(6)    
//IRUM          NOT NULL VARCHAR2(25) 
//EMAIL         NOT NULL VARCHAR2(25) 
//PHONENAME              VARCHAR2(20) 
//HIREDATE      NOT NULL DATE         
//JOBID         NOT NULL VARCHAR2(10) 
//SALARY                 NUMBER(8,2)  
//COMMISSIONPCT          NUMBER(2,2)  
//MANAGERID              NUMBER(6)    
//DEPARTMENTID           NUMBER(4)  

public class EmployeesVO implements Serializable{
	private int employeeId;
	private String irum;
	private String email;
	private String phoneName;
	private String hierDate;
	private String jobId;
	private double salary;
	private double commissionPct;
	private int managerId;
	private int departmentID;

	public EmployeesVO() {}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public String getIrum() {
		return irum;
	}

	public void setIrum(String irum) {
		this.irum = irum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneName() {
		return phoneName;
	}

	public void setPhoneName(String phoneName) {
		this.phoneName = phoneName;
	}

	public String getHierDate() {
		return hierDate;
	}

	public void setHierDate(String hierDate) {
		this.hierDate = hierDate;
	}

	public String getJobId() {
		return jobId;
	}

	public void setJobId(String jobId) {
		this.jobId = jobId;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double d) {
		this.salary = d;
	}

	public double getCommissionPct() {
		return commissionPct;
	}

	public void setCommissionPct(double d) {
		this.commissionPct = d;
	}

	public int getManagerId() {
		return managerId;
	}

	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}

	public int getDepartmentID() {
		return departmentID;
	}

	public void setDepartmentID(int departmentID) {
		this.departmentID = departmentID;
	}

	@Override
	public String toString() {
		return "EmployeesVO [employeeId=" + employeeId + ", irum=" + irum + ", email=" + email + ", phoneName="
				+ phoneName + ", hierDate=" + hierDate + ", jobId=" + jobId + ", salary=" + salary + ", commissionPct="
				+ commissionPct + ", managerId=" + managerId + ", departmentID=" + departmentID + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(commissionPct);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + departmentID;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + employeeId;
		result = prime * result + ((hierDate == null) ? 0 : hierDate.hashCode());
		result = prime * result + ((irum == null) ? 0 : irum.hashCode());
		result = prime * result + ((jobId == null) ? 0 : jobId.hashCode());
		result = prime * result + managerId;
		result = prime * result + ((phoneName == null) ? 0 : phoneName.hashCode());
		temp = Double.doubleToLongBits(salary);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		EmployeesVO other = (EmployeesVO) obj;
		if (Double.doubleToLongBits(commissionPct) != Double.doubleToLongBits(other.commissionPct))
			return false;
		if (departmentID != other.departmentID)
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (employeeId != other.employeeId)
			return false;
		if (hierDate == null) {
			if (other.hierDate != null)
				return false;
		} else if (!hierDate.equals(other.hierDate))
			return false;
		if (irum == null) {
			if (other.irum != null)
				return false;
		} else if (!irum.equals(other.irum))
			return false;
		if (jobId == null) {
			if (other.jobId != null)
				return false;
		} else if (!jobId.equals(other.jobId))
			return false;
		if (managerId != other.managerId)
			return false;
		if (phoneName == null) {
			if (other.phoneName != null)
				return false;
		} else if (!phoneName.equals(other.phoneName))
			return false;
		if (Double.doubleToLongBits(salary) != Double.doubleToLongBits(other.salary))
			return false;
		return true;
	}

	
	
	
}

//public class EmployeesVO implements Serializable{ // 필수
//	private int employeeId;
//	private String irum;
//	private String email;
//	private String hierDate;
//	private String jobId;
//
//	public EmployeesVO() {}
//}