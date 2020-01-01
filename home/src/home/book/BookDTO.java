package home.book;

public class BookDTO {
	//1. table의 필드값을 멤버필드로 만든다
	private String name;
	private String writer;
	private String publisher;
	private int price;
	private String joindate;
	
	//2. 생성자를 만든다
	public BookDTO() {}

	//3. getter, setter 메소드를 만든다
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getJoindate() {
		return joindate;
	}

	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	
	
	
}
