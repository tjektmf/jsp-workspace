package chap08.item;

public class DataModel {

	private String employee_id;
	private String first_name;
	private String last_name;
	private String department_id;
	private String department_name;
	int salary;

	public DataModel() {
		// TODO Auto-generated constructor stub
	}

	public String getEmployee_id() {
		return employee_id;
	}

	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getDepartment_id() {
		return department_id;
	}

	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}
	

	public DataModel(String first_name) {
		super();
		this.first_name = first_name;
	}

	public DataModel(String employee_id, String first_name, String last_name, String department_id,
			String department_name, int salary) {
		super();
		this.employee_id = employee_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.department_id = department_id;
		this.department_name = department_name;
		this.salary = salary;
	}


	public String div() {

		return String.format("<div>%s</div> <div>%s</div> <div>%s</div> <div>%s</div> <div>%s</div> <div>%d</div>",
				employee_id, first_name, last_name, department_id, department_name, salary);
	}

}
