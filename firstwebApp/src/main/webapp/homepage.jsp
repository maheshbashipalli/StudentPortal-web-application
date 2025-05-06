<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.vcube.model.DTO" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Homepage</title>
  
  <!-- Bootstrap CSS (CDN) -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom CSS -->
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f8f9fa;
    }

    /* Hero Section */
    .hero {
      background: url('https://via.placeholder.com/1920x600') no-repeat center center;
      background-size: cover;
      color: white;
      padding: 100px 0;
      text-align: center;
    }

    .hero h1 {
      font-size: 3.5rem;
      margin-bottom: 20px;
    }

    .hero p {
      font-size: 1.25rem;
    }

    /* Profile Section */
    .profile-section {
      padding: 60px 0;
      background-color: #ffffff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
    }

    .profile-section img {
      width: 150px;
      height: 150px;
      border-radius: 50%;
      object-fit: cover;
      border: 4px solid #007bff;
    }

    .profile-info {
      text-align: center;
      margin-top: 20px;
    }

    .profile-info h3 {
      color: #007bff;
      margin-bottom: 10px;
    }

    .profile-info p {
      font-size: 1.2rem;
      color: #555;
    }

    /* Courses Section */
    .courses-section {
      padding: 60px 0;
      background-color: #f1f1f1;
    }

    .courses-section h2 {
      text-align: center;
      margin-bottom: 30px;
    }

    .course-card {
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      margin: 15px 0;
      border-radius: 8px;
      overflow: hidden;
      background-color: #ffffff;
    }

    .course-card img {
      width: 100%;
      height: 200px;
      object-fit: cover;
    }

    .course-card-body {
      padding: 20px;
    }

    /* Events Section */
    .events-section {
      padding: 60px 0;
      background-color: #ffffff;
    }

    .event-card {
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      margin: 15px 0;
      border-radius: 8px;
      overflow: hidden;
      background-color: #f1f1f1;
    }

    .event-card img {
      width: 100%;
      height: 200px;
      object-fit: cover;
    }

    .event-card-body {
      padding: 20px;
    }

    /* Footer */
    footer {
      background-color: #343a40;
      color: white;
      padding: 30px 0;
      text-align: center;
    }

    footer a {
      color: #ffffff;
      text-decoration: none;
    }

    footer a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

  <!-- Navigation Bar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Student Portal  </a>
      
      <% HttpSession ss = request.getSession(false);
      	DTO dt=(DTO)ss.getAttribute("obj");
      	
      %>
      
      <h4> Welcome.... <%=dt.getFirstname() %>></h4>

       
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#home">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="profile.jsp">Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#courses">Courses</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#events">Events</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#contact">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Hero Section -->
  <div class="hero">
    <h1>Welcome to Your Student Portal</h1>
    <p>Manage your courses, check upcoming events, and more!</p>
   
    <a href="profile.jsp" class="btn btn-primary btn-lg">View Profile</a>
  </div>

  <!-- Profile Section -->
  <section id="profile" class="profile-section">
    <div class="container text-center">
      <img src="images/mahipic.jpg" alt="Student Profile">
      <div class="profile-info">
        <h3><%= dt.getFirstname() %></h3>
        <p>Computer Science Student | University XYZ</p>
      </div>
    </div>
  </section>

  <!-- Courses Section -->
  <section id="courses" class="courses-section">
    <div class="container">
      <h2>My Courses</h2>
      <div class="row">
        <div class="col-md-4">
          <div class="course-card">
            <img src="images/intro.jpg" alt="Course 1">
            <div class="course-card-body">
              <h5>Introduction to Programming</h5>
              <p>Learn the basics of programming using Python. Ideal for beginners.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="course-card">
            <img src="images/data.jpg" alt="Course 2">
            <div class="course-card-body">
              <h5>Data Structures</h5>
              <p>Deep dive into data structures, such as arrays, linked lists, and trees.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="course-card">
            <img src="images/web.jpg" alt="Course 3">
            <div class="course-card-body">
              <h5>Web Development</h5>
              <p>Learn how to create dynamic websites using HTML, CSS, and JavaScript.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Events Section -->
  <section id="events" class="events-section">
    <div class="container">
      <h2>Upcoming Events</h2>
      <div class="row">
        <div class="col-md-4">
          <div class="event-card">
            <img src="images/hackathon.jpg" alt="Event 1">
            <div class="event-card-body">
              <h5>Annual Coding Hackathon</h5>
              <p>Join us for the coding competition with great prizes and networking opportunities.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="event-card">
            <img src="images/ai.jpg" alt="Event 2">
            <div class="event-card-body">
              <h5>Guest Lecture on AI</h5>
              <p>Attend a guest lecture on Artificial Intelligence by an industry expert.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="event-card">
            <img src="images/workshop.jpg" alt="Event 3">
            <div class="event-card-body">
              <h5>Workshop on Web Development</h5>
              <p>Hands-on workshop to build your first full-stack website!</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer>
    <p>&copy; 2024 Student Portal. All rights reserved.</p>
    <p><a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
  </footer>

  <!-- Bootstrap JS and Popper.js -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs"></script>
  </body>
  </html>
