package homework.DTO;

public class FreeDTO {
	
	int free_number;
	String free_id;
	int free_pw;
	String free_body;
	int free_like;
	
	
	
	public FreeDTO(String free_id, int free_pw, String free_body) {
		super();
		this.free_id = free_id;
		this.free_pw = free_pw;
		this.free_body = free_body;
	}

	public FreeDTO(int free_number, String free_id, int free_pw, String free_body, int free_like) {
		super();
		this.free_number = free_number;
		this.free_id = free_id;
		this.free_pw = free_pw;
		this.free_body = free_body;
		this.free_like = free_like;
	}
	
	public FreeDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getFree_number() {
		return free_number;
	}

	public void setFree_number(int free_number) {
		this.free_number = free_number;
	}

	public String getFree_id() {
		return free_id;
	}

	public void setFree_id(String free_id) {
		this.free_id = free_id;
	}

	public int getFree_pw() {
		return free_pw;
	}

	public void setFree_pw(int free_pw) {
		this.free_pw = free_pw;
	}

	public String getFree_body() {
		return free_body;
	}

	public void setFree_body(String free_body) {
		this.free_body = free_body;
	}

	public int getFree_like() {
		return free_like;
	}

	public void setFree_like(int free_like) {
		this.free_like = free_like;
	}

	@Override
	public String toString() {
		return "<div>" + free_number + "</div> <a href=\"\">" + free_body +"</a> <div>"
				+ free_id + "</div> <div class=\"like\">" + free_like + "</div>";
	}
	
	

}
