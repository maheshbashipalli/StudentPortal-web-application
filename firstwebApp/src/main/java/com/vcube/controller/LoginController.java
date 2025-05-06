package com.vcube.controller;

import java.io.IOException;

import com.vcube.dao.DAO;
import com.vcube.model.DTO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	// private static final long serialVersionUID = 1L;
	public LoginController() {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstname = request.getParameter("FirstName");
		String password = request.getParameter("Password");
		System.out.println("welcome to LoginController ...!"+firstname +":"+ password);
		


		DAO ld = new DAO();
		DTO s = ld.verify(firstname,password);
		if (s!=null) {
			
			HttpSession session=request.getSession();
			session.setAttribute("obj",s);

			RequestDispatcher requestDispatcher = request.getRequestDispatcher("homepage.jsp");

			requestDispatcher.forward(request, response);
		} else {
			request.setAttribute("errorMessage", "invalid credentials");
			RequestDispatcher requestDispatcher1 = request.getRequestDispatcher("login.jsp");
			requestDispatcher1.include(request, response);

		}
	
	

	}

}
