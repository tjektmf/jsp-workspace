package chap07.DTO;

public class BreadDTO {
	
	private String bread_name;
	private Integer bread_price;
	public BreadDTO(String bread_name, Integer bread_price) {
		super();
		this.bread_name = bread_name;
		this.bread_price = bread_price;
	}
	
	public BreadDTO(String bread_name) {
		this.bread_name = bread_name;

	}

	public BreadDTO() {
		// TODO Auto-generated constructor stub
	}
	public String getBread_name() {
		return bread_name;
	}
	public void setBread_name(String bread_name) {
		this.bread_name = bread_name;
	}
	public Integer getBread_price() {
		return bread_price;
	}
	public void setBread_price(Integer bread_price) {
		this.bread_price = bread_price;
	}
	
	

}
