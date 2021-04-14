package com.grimm.util;

import com.grimm.service.ProductService;
import com.grimm.service.impl.ProductServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.IOException;

public class HttpUtil {
	
	private String value;
	
	public HttpUtil(String value) {
		this.value = value;
	}
	
	public <T> T toModel(Class<T> tClass) {
		try {
			return new ObjectMapper().readValue(value, tClass);
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return null;
	}
	
	public static HttpUtil 	of (BufferedReader reader) {
		StringBuilder sb = new StringBuilder();
		try {
			String line;
		    while ((line = reader.readLine()) != null) {
		        sb.append(line);
		    }
		} catch (IOException e) {
			System.out.print(e.getMessage());
		}
		return new HttpUtil(sb.toString());
	}
	public static void setCategory(HttpServletRequest request, ProductService productService){
		request.setAttribute("aongan", productService.findAllById("idMenuCon","1","null","null"));
		request.setAttribute("aodai", productService.findAllById("idMenuCon","2","null","null"));
		request.setAttribute("hd", productService.findAllById("idMenuCon","3","null","null"));
		request.setAttribute("quan", productService.findAllById("idMenuCon","4","null","null"));
		request.setAttribute("pk", productService.findAllById("idMenuCon","5","null","null"));

		request.setAttribute("popular", productService.findAllById("trangThai","sale","null","null"));
		request.setAttribute("featured", productService.findAllById("null","null","null","null"));
		request.setAttribute("lastest", productService.findAllById("null","null","ngayDang","desc"));
	}

	public static void main(String[] args) {
		new ProductServiceImpl().findAllById("null","null","ngayDang","desc").stream().forEach(System.out::println);
	}
}
