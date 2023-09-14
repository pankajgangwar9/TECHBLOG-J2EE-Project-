package com.tech.blog.servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.helper.Helper;

/**
 * Servlet implementation class EditServlet
 */

@WebServlet("/EditServlet")
@MultipartConfig
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//Fetch all data
		String userName=request.getParameter("user_name");
		String userEmail=request.getParameter("user_email");
		String userpassword=request.getParameter("user_password");
		String userAbout=request.getParameter("user_about");
		Part part =request.getPart("image");
		String imageName = part.getSubmittedFileName();
		
		//get the user from the user
		HttpSession s = request.getSession();
		User user=(User)s.getAttribute("currentUser");
		user.setName(userName);
		user.setEmail(userEmail);
		user.setPassword(userpassword);
		user.setAbout(userAbout);
		String oldFile=user.getProfile();
		user.setProfile(imageName);
		
		//update Database
		UserDao userDao = new UserDao(ConnectionProvider.getConnection());
		boolean ans = userDao.updateUser(user);
		if (ans) {
			out.println("updated to db");
			
			
			String path = request.getRealPath("/")+"pics"+File.separator+user.getProfile();
			//Delete Code
			String pathOldFile = request.getRealPath("/")+"pics"+File.separator+oldFile;
			if(!oldFile.equals("default.png")) {
			Helper.deleteFile(pathOldFile);
			}
			if(Helper.saveFile(part.getInputStream(), path))  {
				out.println("profile updated");
				Message msg=new Message("profile details updated", "success","alert-success");
				
				s.setAttribute("msg", msg);

			}
		}
		
		else {
			out.println("not updated");
			Message msg=new Message("Something Went Wrong...", "erros","alert-danger");
			
			s.setAttribute("msg", msg);
		}
		response.sendRedirect("profile.jsp");
	}
	
}
