<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page with Top, Left & Right Side Navbars</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom CSS -->
  <style>
    body {
      font-family: Arial, sans-serif;
      padding-top: 56px; /* Adjust for top navbar height */
    }

    /* Custom top navbar colors */
    .navbar-custom {
      background-color: #4CAF50; /* Green background */
    }

    .navbar-custom .navbar-brand,
    .navbar-custom .navbar-nav .nav-link {
      color: white; /* White text */
    }

    .navbar-custom .navbar-nav .nav-link:hover {
      color: #FFD700; /* Gold color on hover */
    }

    .sidenav {
      height: 100%;
      width: 250px;
      position: fixed;
      top: 0;
      background-color: #f8f9fa;
      padding-top: 20px;
      z-index: 1000;
    }

    .sidenav a {
      padding: 8px 16px;
      text-decoration: none;
      font-size: 18px;
      color: #333;
      display: block;
    }

    .sidenav a:hover {
      background-color: #ddd;
    }

    .sidenav-right {
      right: 0;
      left: auto;
    }

    .main-content {
      margin-left: 260px;
      margin-right: 260px;
      padding: 20px;
    }

    .login-card {
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
      padding: 20px;
      border-radius: 8px;
      background-color: white;
      width: 100%;
      max-width: 400px;
    }

    .login-btn {
      background-color: #007bff;
      color: white;
      width: 100%;
    }

    .login-btn:hover {
      background-color: #0056b3;
    }

    @media (max-width: 768px) {
      .sidenav {
        width: 200px;
      }

      .main-content {
        margin-left: 210px;
        margin-right: 210px;
      }
    }

    @media (max-width: 576px) {
      .sidenav {
        width: 150px;
      }

      .main-content {
        margin-left: 160px;
        margin-right: 160px;
      }
    }
  </style>
</head>
<body>
  <!-- Top Navbar -->
  <nav class="navbar navbar-expand-lg navbar-custom fixed-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">My Websit welcome<%=request.getAttribute("firstname")%></a>
      
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link active" href="./Linkedpage.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./Clinked.html">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Left Side Navbar -->
  <div class="sidenav">
    <h2 class="text-center">Left Menu</h2>
    <a href="#">Home</a>
    <a href="#">About</a>
    <a href="#">Services</a>
    <a href="#">Contact</a>
  </div>

  <!-- Right Side Navbar -->
  <div class="sidenav sidenav-right">
    <h2 class="text-center">Right Menu</h2>
    <a href="#">Support</a>
    <a href="#">FAQ</a>
    <a href="#">Testimonials</a>
    <a href="#">Feedback</a>
  </div>

  <!-- Main Content Area -->
  <div class="main-content">
    <h2 class="text-center">Login</h2>
    
    <div class="row justify-content-center">
      <div class="col-12 col-md-6">
        <div class="login-card">
        <h5></h5>
         <% 
        String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null) {
    %>
        <div style="color: red;">
            <%= errorMessage %>
        </div>
    <% 
        }
    %>
        
          <form action="LoginController" method="POST">
            <div class="mb-3">
             
              <label for="firstname" class="form-label">firstname</label>
            
              <input type="text" class="form-control" name="FirstName" id="firstname" placeholder="Enter your name">
            </div>
            <div class="mb-3">
              <label for="password" class="form-label">Password</label>
              <input type="password" name="Password" class="form-control" id="password" placeholder="Enter your password">
            </div>
            <button type="submit" class="btn login-btn">Login</button>
          </form>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS (Optional, for dropdowns, modals, etc.) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    