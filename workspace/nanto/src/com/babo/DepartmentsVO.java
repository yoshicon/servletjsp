package com.babo;

import java.io.Serializable;

public class DepartmentsVO implements Serializable{

	private static final long serialVersionUID = 1L;

	private int 	departmentId;
	private String 	departName;
	private int		manaId;
	private int		locId;
	
	
	
	public DepartmentsVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "DepartmentsVo [departId=" + departmentId + ", departmentName=" + departName + ", manaId=" + manaId
				+ ", locId=" + locId + "]";
	}

	public int getDepartId() {
		return departmentId;
	}

	public void setDepartId(int departId) {
		this.departmentId = departId;
	}

	public String getDepartmentName() {
		return departName;
	}

	public void setDepartmentName(String departmentName) {
		this.departName = departmentName;
	}

	public int getManaId() {
		return manaId;
	}

	public void setManaId(int manaId) {
		this.manaId = manaId;
	}

	public int getLocId() {
		return locId;
	}

	public void setLocId(int locId) {
		this.locId = locId;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + departmentId;
		result = prime * result + ((departName == null) ? 0 : departName.hashCode());
		result = prime * result + locId;
		result = prime * result + manaId;
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
		DepartmentsVO other = (DepartmentsVO) obj;
		if (departmentId != other.departmentId)
			return false;
		if (departName == null) {
			if (other.departName != null)
				return false;
		} else if (!departName.equals(other.departName))
			return false;
		if (locId != other.locId)
			return false;
		if (manaId != other.manaId)
			return false;
		return true;
	}

	public DepartmentsVO(int departId, String departmentName, int manaId, int locId) {
		super();
		this.departmentId = departId;
		this.departName = departmentName;
		this.manaId = manaId;
		this.locId = locId;
	}
	
	
	
}
