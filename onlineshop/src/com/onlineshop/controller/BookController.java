package com.onlineshop.controller;

import java.util.List;

import javax.annotation.Resource;
import java.lang.reflect.Type;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.onlineshop.domain.Book;
import com.onlineshop.service.IwannaBuyService;



@Controller
@Scope("prototype")
public class BookController {
	@Resource
	IwannaBuyService iwannabuyservice;
	
	@RequestMapping("/getBooks.do")
	@ResponseBody
	public String getBooks()
	{
		List<Book> books = iwannabuyservice.getBooks();
		Type type = new TypeToken<List<Book>>(){}.getType();
		Gson booksgson = new GsonBuilder().registerTypeAdapter(type, new AllBookTypeAdapter()).create();
		String jsonbook = booksgson.toJson(books,type);
		//System.out.println(jsonbook);
		return  jsonbook;
	}
}
