package com.vcube.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.vcube.Logincon.StudentDTO;
import com.vcube.utility.DBConnection;

public class UpdateDAO {
	DBConnection d1 = new DBConnection();
	Connection con;
	boolean isupdated = false;
	
	
	
	public boolean updatestudent(StudentDTO dd) {
	    try {
	        con = d1.getconnection();
	        if(con == null) {
	        	System.out.println("database connection failed");
	       return false;
	        }
	        String snoquery="select sno from studentregistration where email=?";
	        PreparedStatement snofetch=con.prepareStatement(snoquery);
	        snofetch.setString(1, dd.getEmail());
	        ResultSet rs=snofetch.executeQuery();
	        int sno=-1;
	        if(rs.next()) {
	        	sno=rs.getInt("sno");
	        	System.out.println("fetched sno:"+sno);
	        }else {
	        	System.out.println("non record found for email:"+dd.getEmail());
	        }
	        
	        // SQL query to update student details
	        PreparedStatement ps = con.prepareStatement(
	            "UPDATE studentregistration SET firstname=?, lastname=?, email=?, phone=?, gender=?, course=? WHERE sno=?");
	        System.out.println(dd.getEmail());
	        // Set the parameters from the DTO object
	        ps.setString(1, dd.getFirstname()); // Update firstname
	        ps.setString(2, dd.getLastname() != null ? dd.getLastname() : "");  // Update lastname
	        ps.setString(3, dd.getEmail());     // Update email 
	        ps.setString(4, dd.getPhone());     // Update phone
	        ps.setString(5, dd.getGender());    // Update gender
	        ps.setString(6, dd.getCourse()); // Update course
	        ps.setInt(7, sno);

       	System.out.println("sno"+sno);
	        int rowsUpdated = ps.executeUpdate();
	        
	        // Check if any rows were updated
	        if (rowsUpdated > 0) {
	          //  return "success";
	        	isupdated=true;
	        } else {
	        	System.out.println("no nrows updated");
	            return false; // No record found to update
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		return isupdated;
	}

}
