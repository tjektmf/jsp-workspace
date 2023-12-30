package chap07.DTO;

public class CafeDTO {

	String coffee_name;
	int coffee_price;
	String coffee_size;
	int coffee_number;

	public String getCoffee_name() {
		return coffee_name;
	}

	public void setCoffee_name(String coffee_name) {
		this.coffee_name = coffee_name;
	}

	public int getCoffee_price() {
		return coffee_price;
	}

	public void setCoffee_price(int coffee_price) {
		this.coffee_price = coffee_price;
	}

	public String getCoffee_size() {
		return coffee_size;
	}

	public void setCoffee_size(String coffee_size) {
		this.coffee_size = coffee_size;
	}

	public int getCoffee_number() {
		return coffee_number;
	}

	public void setCoffee_number(int coffee_number) {
		this.coffee_number = coffee_number;
	}

	public CafeDTO(int coffee_number, String coffee_name, int coffee_price, String coffee_size) {
		super();
		this.coffee_name = coffee_name;
		this.coffee_price = coffee_price;
		this.coffee_size = coffee_size;
		this.coffee_number = coffee_number;
	}

	public String getDivRow() {
		return String.format("<div>%d</div>" + "<div>%s</div>" + "<div>%d</div>" + "<div>%s</div>",
				coffee_number, coffee_name, coffee_price, coffee_size);
	}

}
