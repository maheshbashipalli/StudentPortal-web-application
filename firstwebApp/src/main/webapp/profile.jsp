<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.vcube.model.DTO" %>
<%-- <% --%>

<%-- %> --%>

	 <% HttpSession ss = request.getSession(false);
      	DTO dt=(DTO)ss.getAttribute("obj");
      	
      %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Profile</title>
  
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
            <a class="nav-link" href="logout.jsp">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Profile Section -->
  <div class="container my-5">
    <h1>Welcome, <%= dt.getFirstname() %></h1>
    <div class="row">
      <div class="col-md-6">
        <h4>Last Name: <%= dt.getLastname() %></h4>
        <h4>Email: <%= dt.getEmail() %></h4>
        <h4>Phone: <%= dt.getPhone() %></h4>
        <h4>Gender: <%= dt.getGender() %></h4>
        <h4>Course: <%= dt.getCourse() %></h4>
      </div>
      <div class="col-md-6">
<!--         <img src="images/mahipic.jpg" alt="Profile Picture" class="img-fluid rounded-circle" width="150" height="150"> -->
<img src="images/laxman.jpg" alt="Profile Picture" class="rounded-circle" style="width: 150px; height: 180px; object-fit: cover;">
      </div>
    </div>

    <!-- Edit Profile Button -->
    <div class="mt-4">
      <a href="editProfile.jsp" class="btn btn-primary">Edit Profile</a>
    </div>
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