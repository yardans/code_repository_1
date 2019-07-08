package com.onlineshop.domain;

import java.util.HashSet;
import java.util.Set;

public class Sort {
    private Integer sortid;
    private String sortname;
    private Set<Book> books=new HashSet<Book>();
    public Sort(Integer sortid, String sortname) {
        this.sortid = sortid;
        this.sortname = sortname;
    }

    public Set<Book> getBooks() {
        return books;
    }

    public void setBooks(Set<Book> books) {
        this.books = books;
    }

    public Sort() {
    }

    public Integer getSortid() {
        return sortid;
    }

    public void setSortid(Integer sortid) {
        this.sortid = sortid;
    }

    public String getSortname() {
        return sortname;
    }

    public void setSortname(String sortname) {
        this.sortname = sortname;
    }
}
