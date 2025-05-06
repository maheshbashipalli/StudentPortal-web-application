package com.vcube.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/regist")
public class registrationcontroller extends HttpServlet {
	//private static final long serialVersionUID = 1L;

   
    public registrationcontroller() {
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hello");
//		String firstname=request.getParameter("firstname");
//		
//		System.out.println(firstname);
		
	}

}
