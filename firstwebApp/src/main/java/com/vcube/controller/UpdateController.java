package com.vcube.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.vcube.Logincon.StudentDTO;

@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	//private static final long serialVersionUID = 1L;
       
   
    public UpdateController() {
       
    }
    


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname = request.getParameter("FirstName");
		String lastname=request.getParameter("Lastname");
		String email=request.getParameter("email");
		String phone=request.getParameter("Phone");
		String gender=request.getParameter("Gender");
		String course=request.getParameter("Course");
		String sno=request.getParameter("sno");
	
StudentDTO dd=new StudentDTO();
		
		dd.setFirstname(firstname);
		System.out.println("firstname is "+firstname);
		dd.setLastname(lastname);
		System.out.println("lastname is:"+lastname);
		dd.setEmail(email);
		System.out.println("email is:"+email);
		dd.setPhone(phone);
		dd.setGender(gender);
		dd.setCourse(course); 
		dd.setSno(sno);
	
		
		UpdateDAO ud=new UpdateDAO();
		boolean isupdated=
				ud.updatestudent(dd);
		if(isupdated) {
			HttpSession session2=request.getSession();
			session2.setAttribute("firstName", firstname);
			session2.setAttribute("lastName", lastname);
			session2.setAttribute("email", email);
			session2.setAttribute("phone", phone);
			session2.setAttribute("gender", gender);
			session2.setAttribute("course", course);
			session2.setAttribute("sno", sno);
			response.sendRedirect("profile.jsp");
		}else {
			
		request.setAttribute("errorMessage1", "failed to update profile please try again");
		RequestDispatcher dispatcher=
		request.getRequestDispatcher("editProfile.jsp");
		dispatcher.forward(request, response);
		}
		




		

	}

}
