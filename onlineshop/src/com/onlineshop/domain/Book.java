package com.onlineshop.domain;

public class Book {
    private Integer bookid;
    private String bookname;
    private String description;
    private String author;
    private Sort sort;
    private Publishment publishment;
    private String pic;
    private Integer number;
    private	Double price;
    public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public Integer getNumber() {
		return number;
	}

	@Override
	public String toString() {
		return "Book [bookid=" + bookid + ", bookname=" + bookname + ", description=" + description + ", author="
				+ author + ", sort=" + sort + ", publishment=" + publishment + ", pic=" + pic + ", number=" + number
				+ ", price=" + price + "]";
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Book() {
    }

    public Sort getSort() {
        return sort;
    }

    public void setSort(Sort sort) {
        this.sort = sort;
    }

    public Publishment getPublishment() {
        return publishment;
    }

    public void setPublishment(Publishment publishment) {
        this.publishment = publishment;
    }

    public Book(String bookname, String description, String author) {
        this.bookname = bookname;
        this.description = description;
        this.author = author;
    }

    public Book(Integer bookid, String bookname, String description, String author) {
        this.bookid = bookid;
        this.bookname = bookname;
        this.description = description;
        this.author = author;
    }

    public Integer getBookid() {
        return bookid;
    }

    public void setBookid(Integer bookid) {
        this.bookid = bookid;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}
