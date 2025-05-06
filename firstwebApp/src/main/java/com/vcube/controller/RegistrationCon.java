package com.vcube.controller;

import java.io.IOException;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.vcube.dao.DAO;
import com.vcube.model.DTO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/RegistrationCon")
public class RegistrationCon extends HttpServlet {
    public RegistrationCon() {
    	}
    

    // Change to doPost instead of doGet
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstname = request.getParameter("firstName");
        System.out.println(firstname);
        String lastname = request.getParameter("lastName");
        String email1 = request.getParameter("email");
        String phone1 = request.getParameter("phone");
        String gender1 = request.getParameter("gender");
        String course1 = request.getParameter("course");
        String password1 = request.getParameter("password");
       String confirm = request.getParameter("confirmPassword");
    

        DTO d2=new DTO();
        d2.setFirstname(firstname);
        d2.setLastname(lastname);
        d2.setEmail(email1);
        d2.setPhone(phone1);
        d2.setGender(gender1);
        d2.setCourse(course1);
        d2.setPassword(password1);
        //d2.setConfirmpassword(password1);
        DAO d3=new DAO();
        
        String status = d3.insertstudent(d2);
        if(status.equals("success")) {
        	 HttpSession session = request.getSession(); // Create session
             session.setAttribute("firstName", firstname);
             session.setAttribute("lastName", lastname);
             session.setAttribute("email", email1);
             session.setAttribute("phone", phone1);
             session.setAttribute("gender", gender1);
             session.setAttribute("course", course1);
        	request.setAttribute("firstname", firstname);
        	RequestDispatcher requestDispatcher = request.getRequestDispatcher("login.jsp");
    		requestDispatcher.forward(request, response);
        }
        else {
        	request.setAttribute("firstname", firstname);
        	RequestDispatcher requestDispatcher = request.getRequestDispatcher("index1.jsp");
        	requestDispatcher.include(request, response);
        }
        
        
       
    }
}

//		
    
//  String status="success";
//	if(status.equals("success")) {
//    	System.out.println("inserted");
//    	RequestDispatcher requestDispatcher1 = request.getRequestDispatcher("index1.html");
//    	requestDispatcher.forward(request, response);
//return;
//    	
//    }
//	else {
//		System.out.println("failed");
//		RequestDispatcher requestDispatcher2 = request.getRequestDispatcher("index1.html");
//    	requestDispatcher.forward(request, response);
//		
//	}


        
       // d3.updatestudent();

        //Validate if passwords match
//        if (!password1.equals(confirm)) {
//            response.getWriter().write("PASSWORDS DO NOT MATCH.");
//            return;
//        }
//
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//            response.getWriter().write("Driver not found.");
//            return;
//        }
//       Connection con = null;
//       PreparedStatement ps = null;
//        try {
//            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/batch49", "root", "root");
//            ps = con.prepareStatement("INSERT INTO studentregistration (firstname, lastname, email, phone, gender, course, password) VALUES (?, ?, ?, ?, ?, ?, ? )");
//            ps.setString(1, firstname);
//            ps.setString(2, lastname);
//            ps.setString(3, email1);
//            ps.setString(4, phone1);
//            ps.setString(5, gender1);
//            ps.setString(6, course1);         // Object BCrypt;
//			// Hash password before saving
//            //String hashedPassword = BCrypt.hashpw(password1, ((Object) BCrypt).gensalt());
//           ps.setString(7, password1);
//           // ps.setString(8, confirm);
//
//            int rowsAffected = ps.executeUpdate();
//            if (rowsAffected > 0) {
//                response.getWriter().write("Registration Successful!");
//            } else {
//                response.getWriter().write("Registration Failed. Try again.");
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//            response.getWriter().write("Error while connecting to the database.");
//        } finally {
//            try {
//                if (ps != null) ps.close();
//                if (con != null) con.close();
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//        }
//    }
//
//    }
   // }

   

