package com.onlineshop.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.onlineshop.domain.Book;
import com.onlineshop.service.IwannaBuyService;

public class AllBookTypeAdapter extends TypeAdapter<List<Book>>{
	
	@Resource
	IwannaBuyService iwannaBuyService;
	
	public Book readBook(JsonReader reader) throws IOException{
		Book book = null;
		reader.beginObject();
		while(reader.hasNext()){
			switch (reader.nextName()) {
	            case "bookid":
	            	book=iwannaBuyService.findBookById(reader.nextInt());
	                break;
	            case "bookname":
	            	book.setBookname(reader.nextString());
	            	break;
	            case "author":
	                book.setAuthor(reader.nextString());
	                break; 
	            case "description":
	                book.setDescription(reader.nextString());
	                break;
	            case "pic":
	            	book.setDescription(reader.nextString());
	            	break;
	            case "price":
	            	book.setPrice(reader.nextDouble());
	            	break;
	            case "number":
	            	book.setNumber(reader.nextInt());
	            	break;
	            case "sort":
	            	(book.getSort()).setSortname(reader.nextString());
	            	break;
	            case "publishment":
	            	book.getPublishment().getPname();
	            	break;
			}
			if(book==null){
				break;
			}
		}
		return book;
		
	}
	
	@Override
	public List<Book> read(JsonReader reader) throws IOException {
		List<Book> books = new ArrayList<Book>();
		reader.beginArray();
		while(reader.hasNext()){
			books.add(readBook(reader));
		}
		return null;
	}

	@Override
	public void write(JsonWriter out, List<Book> books) throws IOException {
		out.beginArray();
		for (Book book : books) {
			writeBook(out,book);
		}
		out.endArray();
		
	}
	
	public void writeBook(JsonWriter out, Book book) throws IOException {
		out.beginObject();
		out.name("bookid").value(book.getBookid());
		out.name("bookname").value(book.getBookname());
		out.name("description").value(book.getDescription());
		out.name("pic").value(book.getPic());
		out.name("price").value(book.getPrice());
		out.name("number").value(book.getNumber());
		out.name("author").value(book.getAuthor());
		out.name("publishment");
		if(book.getPublishment()!=null){
			out.value(book.getPublishment().getPname());
		}else{
			out.value(GsonMessage.BOOK_PUBLISHMENT_NULL);
		}
		out.name("sort");
		if(book.getSort()!=null){
			out.value(book.getSort().getSortname());
		}else{
			out.value(GsonMessage.BOOK_SORT_NULL);
		}
		out.endObject();
	}

	
}
