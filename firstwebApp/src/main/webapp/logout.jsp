<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Invalidate the session to log the user out
    HttpSession ss = request.getSession(false); // Retrieve existing session, don't create a new one if it doesn't exist
    if (session != null) {
        session.invalidate(); // Invalidate the session
    }

    // Redirect to login page after logging out
    response.sendRedirect("login.jsp"); // Redirect to the login page (or your desired landing page)
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logging out...</title>
</head>
<body>
    <h1>You are being logged out...</h1>
    <p>Please wait...</p>
</body>
</html>
