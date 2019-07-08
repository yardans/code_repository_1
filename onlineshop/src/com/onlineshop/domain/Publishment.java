package com.onlineshop.domain;

import java.util.HashSet;
import java.util.Set;

public class Publishment {
    private Integer pid;
    private String pname;
    private Set<Book> books=new HashSet<Book>();
    public Publishment() {
    }

    public Set<Book> getBooks() {
        return books;
    }

    public void setBooks(Set<Book> books) {
        this.books = books;
    }

    public Publishment(Integer pid, String pname) {
        this.pid = pid;
        this.pname = pname;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }
}
