package com.songguoliang.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

public class AutocompleteServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private static final String[] DATA={"aabcdef","aaccdfg","aabbdfg"};
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//传的参数，默认值是term
		String input = request.getParameter("term");
		//模拟查数据库
		List<String>list=new ArrayList<String>();
		for(String str:DATA){
			if(str.startsWith(input)){
				list.add(str);
			}
		}
		String json = JSON.toJSONString(list);
		response.getWriter().write(json);
		
	}
	
}

