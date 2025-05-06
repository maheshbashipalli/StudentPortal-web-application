package com.vcube.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.vcube.model.DTO;
import com.vcube.utility.DBConnection;

public class DAO implements DAOinterface {

	DBConnection d1 = new DBConnection();

	Connection con;

	public String insertstudent(DTO d) {

		String status = "fail";
		try {
			con = d1.getconnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into studentregistration(firstname,lastname,email,phone,gender,course,password) values(?,?,?,?,?,?,?)");
			ps.setString(1, d.getFirstname());
			ps.setString(2, d.getLastname());
			ps.setString(3, d.getEmail());
			ps.setString(4, d.getPhone());
			ps.setString(5, d.getGender());
			ps.setString(6, d.getCourse());
			ps.setString(7, d.getPassword());
			// ps.setString(8, d.getConfirmpassword());
			int n = ps.executeUpdate();
			if (n > 0)
				status = "success";
			System.out.println(status);
			System.out.println("data inserted successfully");

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);

		}
		return status;

	}

	public DTO verify(String name, String pwd) {

		DTO dt = null;
		try {
			con = d1.getconnection();
			PreparedStatement ps = con
					.prepareStatement("select * from studentregistration where firstname=? and password=?");
			ps.setString(1, name);
			ps.setString(2, pwd);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {

				dt = new DTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8));
			}

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);

		}
		return dt;

	}

	@Override
	public String insertstudent(String firstname, String lastname, String email, String gender, String phone,
			String course, String password) {
		// TODO Auto-generated method stub
		return null;
	}

}
