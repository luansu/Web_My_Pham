package orishop.models;


public class EmployeeModels {
	private int employeeID;
	private int count;
	
	
	public EmployeeModels() {
		super();
	}
	public EmployeeModels(int employeeID, int count) {
		super();
		this.employeeID = employeeID;
		this.count = count;
	}
	public int getEmployeeID() {
		return employeeID;
	}
	public void setEmployeeID(int employeeID) {
		this.employeeID = employeeID;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
	
}
