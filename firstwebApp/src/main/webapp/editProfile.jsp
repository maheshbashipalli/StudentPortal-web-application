

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.vcube.dao.DAO" %>
<%@ page import="com.vcube.model.DTO" %>
<%@ page import="com.vcube.controller.UpdateDAO" %>
<%@ page import="com.vcube.Logincon.StudentDTO" %>


<%


  // Get session attributes
  String firstName = (String) session.getAttribute("firstName");
  String lastName = (String) session.getAttribute("lastName");
  String email = (String) session.getAttribute("email");
  String phone = (String) session.getAttribute("phone");
  String gender = (String) session.getAttribute("gender");
  String course = (String) session.getAttribute("course");
  String sno= (String) session.getAttribute("sno");

  // Handling form submission to update session attributes
  if (request.getMethod().equals("POST")) {
      firstName = request.getParameter("firstName");
      lastName = request.getParameter("lastName");
      email = request.getParameter("email");
      phone = request.getParameter("phone");
      gender = request.getParameter("gender");
      course = request.getParameter("course");

      // Update session attributes
      session.setAttribute("firstName", firstName);
      session.setAttribute("lastName", lastName);
      session.setAttribute("email", email);
      session.setAttribute("phone", phone);
      session.setAttribute("gender", gender);
      session.setAttribute("course", course);
      session.setAttribute("sno", sno);
     
      UpdateDAO ud=new UpdateDAO();
      int snoInt =0;
      if(sno !=null && !sno.isEmpty()){
    	  try{
    		  snoInt = Integer.parseInt(sno);
    	  }catch(NumberFormatException e){
    		  System.out.println("invalid sno:"+sno);
    	  }
      }
     
      
      StudentDTO d4=new StudentDTO(firstName, lastName, email, phone, gender, course, snoInt);
    
      boolean isUpdated = ud.updatestudent( d4); // Call a method to update the database

      // Redirect to the profile page after the update
      RequestDispatcher dispatcher;
      if (isUpdated) {
          response.sendRedirect("profile.jsp");
          return;
      } else {
         
          request.setAttribute("errorMessage", "Error updating profile");
           request.getRequestDispatcher("editProfile.jsp").forward(request, response);
      }
  }
%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Edit Profile</title>

  <!-- Bootstrap CSS (CDN) -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

  <!-- Navigation Bar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Student Portal</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link" href="profile.jsp">Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Edit Profile Section -->
  <div class="container my-5">
    <h2>Edit Your Profile</h2>
    <form method="POST">
      <div class="mb-3">
        <label for="firstName" class="form-label">First Name</label>
        <input type="text" class="form-control" id="firstName" name="firstName" value="<%= firstName %>" required>
      </div>
      <div class="mb-3">
        <label for="lastName" class="form-label">Last Name</label>
        <input type="text" class="form-control" id="lastName" name="lastName" value="<%= lastName %>" required>
      </div>
      <div class="mb-3">
        <label for="email" class="form-label">Email</label>
        <input type="email" class="form-control" id="email" name="email" value="<%= email %>" required>
      </div>
      <div class="mb-3">
        <label for="phone" class="form-label">Phone</label>
        <input type="text" class="form-control" id="phone" name="phone" value="<%= phone %>" required>
      </div>
      <div class="mb-3">
        <label for="gender" class="form-label">Gender</label>
        <select class="form-select" id="gender" name="gender" required>
        <option value="Male" <%= (gender != null && gender.equals("Male")) ? "selected" : "" %>>Male</option>
<option value="Female" <%= (gender != null && gender.equals("Female")) ? "selected" : "" %>>Female</option>
<option value="Other" <%= (gender != null && gender.equals("Other")) ? "selected" : "" %>>Other</option>
        
       
        
          <option value="Male" <%= gender.equals("Male") ? "selected" : "" %>>Male</option>
          <option value="Female" <%= gender.equals("Female") ? "selected" : "" %>>Female</option>
          <option value="Other" <%= gender.equals("Other") ? "selected" : "" %>>Other</option>
        </select>
      </div>
      <div class="mb-3">
        <label for="course" class="form-label">Course</label>
        <input type="text" class="form-control" id="course" name="course" value="<%= course %>" required>
      </div>
      <%
  String snoInt = (String) session.getAttribute("sno");
  if (sno == null || sno.isEmpty()) {
      sno = "0"; // Default to empty string if sno is not available
  }
%>
   
       <div class="mb-3">
        <label for="sno" class="form-label">sno</label>
       <input type="text" class="form-control" id="sno" name="sno" value="<%= snoInt %>" required>
      </div>
       
      <button type="submit" class="btn btn-primary">Save Changes</button>
    </form>
  </div>

  <!-- Footer -->
  <footer class="bg-dark text-white text-center py-3">
    <p>&copy; 2024 Student Portal. All rights reserved.</p>
  </footer>

  <!-- Bootstrap JS and Popper.js (for responsive navbar) -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>
