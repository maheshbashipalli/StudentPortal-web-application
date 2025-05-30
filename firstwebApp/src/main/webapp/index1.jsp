<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration Form1</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="styles.css">
</head>
<body>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header bg-primary text-white text-center">
                        <h3>Student Registration Form</h3>
                    </div>
                    <div class="card-body">
                        <form id="registrationForm" action="RegistrationCon" onsubmit="return verify()" method="POST">
                            <!-- First Name -->
                            <div class="mb-3">
                                <label for="firstName" class="form-label">First Name</label>
                                <input type="text" class="form-control" id="firstName" name="firstName" required>
                                <div class="invalid-feedback">First Name is required.</div>
                            </div>

                            <!-- Last Name -->
                            <div class="mb-3">
                                <label for="lastName" class="form-label">Last Name</label>
                                <input type="text" class="form-control" id="lastName" name="lastName" required>
                                <div class="invalid-feedback">Last Name is required.</div>
                            </div>

                            <!-- Email -->
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                                <div class="invalid-feedback">Please enter a valid email.</div>
                            </div>

                            <!-- Phone Number -->
                            <div class="mb-3">
                                <label for="phone" class="form-label">Phone Number</label>
                                <input type="text" class="form-control" id="phone" name="phone" maxlength="10" required>
                                <div class="invalid-feedback">Phone Number must be 10 digits and contain only numbers.</div>
                            </div>

                            <!-- Gender -->
                            <div class="mb-3">
                                <label class="form-label">Gender</label>
                                <div class="form-check">
                                    <input type="radio" class="form-check-input" id="male" name="gender" value="Male" required>
                                    <label class="form-check-label" for="male">Male</label>
                                </div>
                                <div class="form-check">
                                    <input type="radio" class="form-check-input" id="female" name="gender" value="Female" required>
                                    <label class="form-check-label" for="female">Female</label>
                                </div>
                                <div class="invalid-feedback">Please select your gender.</div>
                            </div>

                            <!-- Course -->
                            <div class="mb-3">
                                <label for="course" class="form-label">Course</label>
                                <select class="form-control" id="course" name="course" required>
                                    <option value="">Select a Course</option>
                                    <option value="Computer Science">Computer Science</option>
                                    <option value="Mechanical Engineering">Mechanical Engineering</option>
                                    <option value="Electrical Engineering">Electrical Engineering</option>
                                </select>
                                <div class="invalid-feedback">Please select a course.</div>
                            </div>

                            <!-- Password -->
                           <!-- confirmPassword -->
      <div class="mb-3">
      <label for="password" class="form-label">Password</label>
     <input type="password" class="form-control" id="password" name="password" required>
  <div class="invalid-feedback">Password is required.</div>
</div>


<div class="mb-3">
  <label for="confirmPassword" class="form-label">Confirm Password</label>
  <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
  <div class="invalid-feedback">ConfirmPassword is required.</div>
</div>

  <div id="passwordError" class="text-danger mb-3" style="display: none;">
                                Passwords do not match!
                            </div>


                            <!-- Submit Button -->
                            <button type="submit" class="btn btn-primary btn-block">Register</button>
                        </form>

                        <!-- Login Link -->
                        <div class="mt-3 text-center">
                            <p>Already have an account? <a href="login.html">Login here</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
    <!-- Custom JavaScript -->
    <script src="script.js"></script>
<!-- <!--      <script> --> -->
<!-- //         function verify() { -->
<!-- //             let pass = document.getElementById("password").value; -->
<!-- //             let confirmPass = document.getElementById("confirmPassword").value; -->

<!-- //             // Debugging - Check the values -->
<!-- //             console.log("Password: ", pass); -->
<!-- //             console.log("Confirm Password: ", confirmPass); -->

<!-- //             // Hide the password error message initially -->
<!-- //             document.getElementById("passwordError").style.display = "none"; -->
<!-- //             document.getElementById("confirmPassword").classList.remove("is-invalid"); -->

<!-- //             // Check if passwords match -->
<!-- //             if (pass !== confirmPass) { -->
<!-- //                 // Show error message -->
<!-- //                 document.getElementById("passwordError").style.display = "block"; -->
                
<!-- //                 // Add invalid class to confirm password field -->
<!-- //                 document.getElementById("confirmPassword").classList.add("is-invalid"); -->
                
<!-- //                 return false; // Prevent form submission -->
<!-- //             } -->

<!-- //             return true; // Allow form submission -->
<!-- //         } -->
<!-- <!--     </script> --> -->
    
    
    
   

    
   
</body>
</html>
