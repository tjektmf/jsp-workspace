package homework.DTO;

public class ReplyDTO {

	String reply_id;
	int reply_pw;
	String reply_body;
	int reply_like;
	
	public ReplyDTO() {
		// TODO Auto-generated constructor stub
	}

	public ReplyDTO(String reply_id, int reply_pw, String reply_body, int reply_like) {
		super();
		this.reply_id = reply_id;
		this.reply_pw = reply_pw;
		this.reply_body = reply_body;
		this.reply_like = reply_like;
	}

	public String getReply_id() {
		return reply_id;
	}

	public void setReply_id(String reply_id) {
		this.reply_id = reply_id;
	}

	public int getReply_pw() {
		return reply_pw;
	}

	public void setReply_pw(int reply_pw) {
		this.reply_pw = reply_pw;
	}

	public String getReply_body() {
		return reply_body;
	}

	public void setReply_body(String reply_body) {
		this.reply_body = reply_body;
	}

	public int getReply_like() {
		return reply_like;
	}

	public void setReply_like(int reply_like) {
		this.reply_like = reply_like;
	}
	
	
}


