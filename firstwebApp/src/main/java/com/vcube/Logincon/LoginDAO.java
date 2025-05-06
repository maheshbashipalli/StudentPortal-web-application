package com.vcube.Logincon;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.vcube.dao.DAOinterface;
import com.vcube.model.DTO;
import com.vcube.utility.DBConnection;

public class LoginDAO {

	DBConnection d1 = new DBConnection();
	Connection con;
	String status = "fail";

	public String get(DTO d) {
		String firstname = d.getFirstname();
		String password = d.getPassword();
		String lastname = d.getLastname();

		System.out.println("trying for login:" + firstname + " " + password);
		try {
			con = d1.getconnection();
			PreparedStatement ps = con.prepareStatement(
					"select firstname, lastname,password,email,phone,gender,course from studentregistration where firstname=? and Password=?");
			ps.setString(1, firstname);
			ps.setString(2, password);
			d.setLastname(lastname);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				d.setFirstname(rs.getString("firstname"));
				d.setLastname(rs.getString("lastname"));
				d.setEmail(rs.getString("email"));
				d.setPhone(rs.getString("phone"));
				d.setGender(rs.getString("gender"));
				d.setCourse(rs.getString("course"));

				if (d.getLastname() == null) {
					d.setLastname(" ");
				}
				status = "success";
			}

		} catch (Exception e) {
			System.out.println(e);

		}

		return status;
	}

}
