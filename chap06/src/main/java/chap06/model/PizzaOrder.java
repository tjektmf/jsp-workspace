package chap06.model;

// 데이터 클래스, 모델
// 컬렉션과 함께 사용하면서 데이터를 담아놓기 위한 용도의 클래스

public class PizzaOrder {

	String size;
	int qty;

	public PizzaOrder(String size, int qty) {
		this.size = size;
		this.qty = qty;
	}

	public int getQty() {
		return qty;
	}

	public String getSize() {
		return size;
	}

	@Override
	public String toString() {

		return String.format("<li>%s, %d판</li>", size, qty);
	}

}
