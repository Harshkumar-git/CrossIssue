package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.hibernate.Session;

import com.dao.dao;
import com.model.Issuetype;
import com.model.allocation;
import com.model.anyquery;
import com.model.postissue;
import com.model.profile;
import com.model.roll;

import com.model.department;
import com.model.feedback;
import com.model.anyquery;

/**
 * Servlet implementation class Controller
 */@MultipartConfig(fileSizeThreshold=1024*1024*2,
		 maxFileSize=1024*1024*10,
		 maxRequestSize=1024*1024*50)
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		dao dao= new dao();
		String actionCode = request.getParameter("actionCode");
		
		//to view user in delete page from  database
		
		if(actionCode.equals("logout")){
			request.getSession().removeAttribute("userName");
			response.sendRedirect(request.getContextPath()+"/wp-content/frontend/cross-issue.jsp");
		}
		
		if(actionCode.equals("deleteuser")){
			ArrayList<profile>arrayList=dao.viewdeleteuser();
			request.getSession().setAttribute("viewuser", arrayList);
			response.sendRedirect(request.getContextPath()+"/wp-content/portal/delete.jsp");
		}
		
		//to view user in Approve page from  database
		if(actionCode.equals("approve")){
			ArrayList<profile>arrayList=dao.viewapproveuser();
			request.getSession().setAttribute("approve", arrayList);
			response.sendRedirect(request.getContextPath()+"/wp-content/portal/approve.jsp");
			
		}
		//to view roll type in registration form
		if(actionCode.equals("rolltype")){
			ArrayList<department>arrayList1=dao.viewdept();
			request.getSession().setAttribute("viewdept", arrayList1);
			
			ArrayList<roll>arrayList=dao.viweroll();
			request.getSession().setAttribute("viewroll", arrayList);
			response.sendRedirect(request.getContextPath()+"/wp-content/portal/adduser.jsp");
			
		}
		
		if(actionCode.equals("reg")){
			ArrayList<department>arrayList1=dao.viewdept();
			request.getSession().setAttribute("viewdept", arrayList1);
			
			ArrayList<roll>arrayList=dao.viweroll();
			request.getSession().setAttribute("viewroll", arrayList);
			response.sendRedirect(request.getContextPath()+"/wp-content/portal/register.jsp");
			
		}
		
		if(actionCode.equals("rolllogin")){
			
			
			ArrayList<roll>arrayList=dao.viweroll();
			request.getSession().setAttribute("viewroll", arrayList);
			
			response.sendRedirect(request.getContextPath()+"/wp-content/portal/login.jsp");
			
		}
		
		
		//to view user detail in update page
		if(actionCode.equals("updateuser")){
			ArrayList<profile>arrayList=dao.updateuser();
			request.getSession().setAttribute("updateuser", arrayList);
			if(request.getSession().getAttribute("Rolltype").equals("employee"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/employee/	.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("engineer"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/engineer/manageuser.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("admin"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/portal/manageuser.jsp");
			}
			else
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/hade/manageuser.jsp");
			}
			
		}
		
		//to view user detail in update form
		if(actionCode.equals("updateuser1")){
			int id=Integer.parseInt(request.getParameter("view_id"));
			
			ArrayList<profile>arrayList=dao.updateuser1(id);
			
			request.getSession().setAttribute("updateuser1", arrayList);
			
			if(request.getSession().getAttribute("Rolltype").equals("employee"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/employee/updateuser.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("engineer"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/engineer/updateuser.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("admin"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/portal/updateuser.jsp");
			}
			else
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/hade/updateuser.jsp");
			}
			
			
		}
		
		
		// to view Issue type In page
		if(actionCode.equals("viewissuetype")){
			ArrayList<Issuetype>arrayList=dao.viewissuetyep();
			request.getSession().setAttribute("viewissuetype", arrayList);
			if(request.getSession().getAttribute("Rolltype").equals("employee"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/employee/viewissuetype.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("engineer"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/engineer/viewissuetype.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("admin"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/portal/viewissuetype.jsp");
			}
			else
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/hade/viewissuetype.jsp");
			}
			
			
		}
		
		// to view Issue type in Form
		if(actionCode.equals("updateissuetype")){
			int id=Integer.parseInt(request.getParameter("view_id"));
			ArrayList<Issuetype>arrayList=dao.updateissueform(id);
			request.getSession().setAttribute("formissue", arrayList);
			if(request.getSession().getAttribute("Rolltype").equals("employee"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/employee/updateissuetype.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("engineer"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/engineer/updateissuetype.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("admin"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/portal/updateissuetype.jsp");
			}
			else
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/hade/updateissuetype.jsp");
			}
			
					
				}
		
		//view issue type in post issue form
		if(actionCode.equals("issuetype")){
			ArrayList<Issuetype>arrayList=dao.viewissuetyep();
			request.getSession().setAttribute("issuetype", arrayList);
			
			if(request.getSession().getAttribute("Rolltype").equals("employee"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/employee/post_issue.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("engineer"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/engineer/post_issue.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("admin"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/portal/post_issue.jsp");
			}
			else
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/hade/post_issue.jsp");
			}
		
			
		}
		//view issue list in table form to admin
		if(actionCode.equals("viewissue")){
			ArrayList<postissue>arrayList=dao.viewissue();
			request.getSession().setAttribute("viewissue", arrayList);
			if(request.getSession().getAttribute("Rolltype").equals("employee"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/employee/viewissue.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("engineer"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/engineer/viewissue.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("admin"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/portal/viewissue.jsp");
			}
			else
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/hade/viewissue.jsp");
			}
			
			
			
		}
		//view issue in update issue page
		if(actionCode.equals("updateissue")){
			int id=Integer.parseInt(request.getParameter("view_id"));
			ArrayList<postissue>arrayList=dao.viewissue(id);
			request.getSession().setAttribute("viewissue", arrayList);
			if(request.getSession().getAttribute("Rolltype").equals("employee"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/employee/updateissue.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("engineer"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/engineer/updateissue.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("admin"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/portal/updateissue.jsp");
			}
			else
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/hade/updateissue.jsp");
			}
			
		}
		//to see the list of department in issue type
		if(actionCode.equals("viewdept")){
			ArrayList<department>arrayList=dao.viewdept();
			request.getSession().setAttribute("viewdept", arrayList);
			
			response.sendRedirect(request.getContextPath()+"/wp-content/portal/add_Issue_type.jsp");
		}
		// to see the list of issue
		if(actionCode.equals("allocation")){
			ArrayList<postissue>arrayList=dao.viewissue();
			
			
			request.getSession().setAttribute("viewissue", arrayList);
			if(request.getSession().getAttribute("Rolltype").equals("employee"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/employee/allocation.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("engineer"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/engineer/allocation.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("admin"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/portal/allocation.jsp");
			}
			else
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/hade/allocation.jsp");
			}
			
		
			
		}
		// to allcated engginer
		if(actionCode.equals("allocate")){
			int id=Integer.parseInt(request.getParameter("view_id"));
			ArrayList<postissue>arrayList=dao.viewissueall(id);
			
			ArrayList<profile>arrayList2=dao.viewuser();
			request.getSession().setAttribute("employee", arrayList2);
			request.getSession().setAttribute("viewissue", arrayList);
			
			if(request.getSession().getAttribute("Rolltype").equals("employee"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/employee/allocat.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("engineer"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/engineer/allocat.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("admin"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/portal/allocat.jsp");
			}
			else
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/hade/allocat.jsp");
			}
			
			
			
		}
		
		if(actionCode.equals("viewallocation")){
		ArrayList<allocation>arrayList=null;
				
			
			arrayList=dao.viewallocation(request.getSession().getAttribute("Email"));
			request.getSession().setAttribute("viewallocation", arrayList);
			if(request.getSession().getAttribute("Rolltype").equals("employee"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/employee/viewallocation.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("engineer"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/engineer/viewallocation.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("admin"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/portal/viewallocation.jsp");
			}
			else
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/hade/viewallocation.jsp");
			}
			
			
		}
		if(actionCode.equals("updateallocation")){
			int id=Integer.parseInt(request.getParameter("view_id"));
			ArrayList<postissue>arrayList=dao.viewissueall(id);
			ArrayList<profile>arrayList2=dao.viewuser();
			
			request.getSession().setAttribute("employee", arrayList2);
			request.getSession().setAttribute("viewissue", arrayList);
			
			if(request.getSession().getAttribute("Rolltype").equals("employee"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/employee/allocationupdate.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("engineer"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/engineer/allocationupdate.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("admin"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/portal/allocationupdate.jsp");
			}
			else
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/hade/allocationupdate.jsp");
			}
			
			
		}
		if(actionCode.equals("deleteuserflag"))
		{
			int id=Integer.parseInt(request.getParameter("view_id"));
			profile p1=new profile();
			p1.setProfileid(id);
			
			int status=dao.deleteuser(p1);
			if(status>=0){
				 response.sendRedirect(request.getContextPath()+"/Controller?actionCode=deleteuser");
			 	}
			 	else {
				 response.sendRedirect(request.getContextPath()+"/wp-content/portal/adduser.jsp");
			 	}
			
		}
		
		if(actionCode.equals("approveuserflag"))
		{
			int id=Integer.parseInt(request.getParameter("view_id"));
			profile p1=new profile();
			p1.setProfileid(id);
			
			int status=dao.approveuser(p1);
			if(status>=0){
				 response.sendRedirect(request.getContextPath()+"/Controller?actionCode=approve");
			 	}
			 	else {
				 response.sendRedirect(request.getContextPath()+"/wp-content/portal/adduser.jsp");
			 	}
			
		}
		
		if(actionCode.equals("deleteallocation"))
		{
			int id=Integer.parseInt(request.getParameter("view_id"));
			allocation a1=new allocation();
			a1.setProfileid(id);
			
			int status=dao.deleteallocation(a1);
			
			if(status>=0){
				 response.sendRedirect(request.getContextPath()+"/Controller?actionCode=viewallocation");
			 	}
			 	else {
			 		
			 		if(request.getSession().getAttribute("Rolltype").equals("employee"))
					{
						response.sendRedirect(request.getContextPath()+"/wp-content/employee/resolve.jsp");
					}
					else if(request.getSession().getAttribute("Rolltype").equals("engineer"))
					{
						response.sendRedirect(request.getContextPath()+"/wp-content/engineer/resolve.jsp");
					}
					else if(request.getSession().getAttribute("Rolltype").equals("admin"))
					{
						response.sendRedirect(request.getContextPath()+"/wp-content/portal/resolve.jsp");
					}
					else
					{
						response.sendRedirect(request.getContextPath()+"/wp-content/hade/resolve.jsp");
					}
				 response.sendRedirect(request.getContextPath()+"/wp-content/portal/allocat.jsp");
			 	}
			
		}
		// to see the allocate the issue to employee
		if(actionCode.equals("resoveissue")){
			ArrayList<allocation>arrayList=dao.resoveissue();
			
			
			request.getSession().setAttribute("viewallocation", arrayList);
			
			if(request.getSession().getAttribute("Rolltype").equals("employee"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/employee/resolve.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("engineer"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/engineer/resolve.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("admin"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/portal/resolve.jsp");
			}
			else
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/hade/resolve.jsp");
			}
			
			
			
		}
		
		if(actionCode.equals("solveissue"))
		{
			int id=Integer.parseInt(request.getParameter("view_id"));
			allocation a1=new allocation();
			a1.setProfileid(id);
		
			int status=dao.solveissue(a1);
			
			String email=request.getParameter("email");
		    List<profile>email1=dao.validateemail(email);
		    
		    
			
		
			
		String host="smtp.gmail.com";  
		String port="587";
		  final String useremail="psiv13500@gmail.com";//change accordingly  
		  final String password="love12345";//change accordingly  
		    
		//  String to="sonoojaiswal1987@gmail.com";//change accordingly  
		  
		   //Get the session object  
		  Properties properties = new Properties();
			properties.put("mail.smtp.host", host);
			properties.put("mail.smtp.port", port);
			properties.put("mail.smtp.auth", "true");
			properties.put("mail.smtp.starttls.enable", "true");

		  /* Properties props = new Properties();  
		   props.put("mail.smtp.host",host);  
		   props.put("mail.smtp.auth", "true");  
		  */   
		   javax.mail.Session session = javax.mail.Session.getInstance(properties,  
		    new javax.mail.Authenticator() 
		   {  
		      protected PasswordAuthentication getPasswordAuthentication() 
		      {  
		    return new PasswordAuthentication(useremail,password);  
		      }  
		    });  
		  
		   //Compose the message  
		    try 
		    {  
		     MimeMessage message = new MimeMessage(session);  
		     message.setFrom(new InternetAddress(useremail));  
		    
		     message.addRecipient(Message.RecipientType.TO,new InternetAddress(email));  
		     message.setSubject("Problem ");  
		     message.setText("hello..Your Problem Succes full resolve ");  
		       
		    //send the message  
		     Transport.send(message);  
		  
		     System.out.println("message sent successfully...");  
		     
		     
		     } 
		    
		    catch (MessagingException e) 
		        {
		     	e.printStackTrace();
		    	}  
		    

			if(status>=0){
				 response.sendRedirect(request.getContextPath()+"/Controller?actionCode=resoveissue");
			 	}
			 	else {
			 		
				 response.sendRedirect(request.getContextPath()+"/wp-content/portal/resolve.jsp");
			 	}
			
		}
		
		
		
		
		if(actionCode.equals("manageprofile")){
			int id=Integer.parseInt(request.getParameter("view_id"));
			
			ArrayList<profile>arrayList=dao.manageprofile(id);
			
			request.getSession().setAttribute("updateuser1", arrayList);
			if(request.getSession().getAttribute("Rolltype").equals("employee"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/employee/manageprofile.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("engineer"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/engineer/manageprofile.jsp");
			}
			else if(request.getSession().getAttribute("Rolltype").equals("admin"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/portal/manageprofile.jsp");
			}
			else
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/hade/manageprofile.jsp");
			}
			
			
		}
		
		
		if(actionCode.equals("viewfeedback")){
			
			
			ArrayList<feedback>arrayList=dao.viewfeedback();
			
			request.getSession().setAttribute("viewfeedback", arrayList);
			response.sendRedirect(request.getContextPath()+"/wp-content/portal/feedback.jsp");
			
		}
		
		
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String actionCode=request.getParameter("actionCode");
		dao dao= new dao();
		
		
		//to Add user date in data base
		if(actionCode.equals("login"))
		{
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			
		ArrayList<profile>arrayList=dao.dologin(username,password);
		
		if(arrayList.size()>0)
		{
			HttpSession session = request.getSession();
			Iterator<profile>iterator=arrayList.iterator();
			
			while (iterator.hasNext()) {
				profile profile = (profile) iterator.next();
				session.setAttribute("userName", profile.getFirstname());
				session.setAttribute("Email", profile.getEmail());
				session.setAttribute("view_id", profile.getProfileid());
				session.setAttribute("profilepic", profile.getProfilepic());
				session.setAttribute("Rolltype",profile.getRolltype());
				session.setAttribute("Department", profile.getDepartment());
			}
			if(session.getAttribute("Rolltype").equals("employee")){
			response.sendRedirect(request.getContextPath()+"/wp-content/employee/Dashboard.jsp?success=yes");
			}else if(session.getAttribute("Rolltype").equals("hade")){
				response.sendRedirect(request.getContextPath()+"/wp-content/hade/Dashboard.jsp?success=yes");
			}else if(session.getAttribute("Rolltype").equals("engineer")){
				response.sendRedirect(request.getContextPath()+"/wp-content/engineer/Dashboard.jsp?success=yes");
			}else {
				response.sendRedirect(request.getContextPath()+"/wp-content/portal/Dashboard.jsp?success=yes");
			}
			
		}
		else
		{
			response.sendRedirect(request.getContextPath()+"/wp-content/portal/login.jsp?success=no");
		}
			
			
		}
		if(actionCode.equals("adduser"))	
		{
			profile p1= new profile();
		p1.setRolltype(request.getParameter("r_type"));	
		p1.setFirstname(request.getParameter("f_name"));
		p1.setLastname(request.getParameter("l_name"));
		p1.setDob(request.getParameter("dob"));
		p1.setGender(request.getParameter("gender"));
		p1.setAddress(request.getParameter("add"));
		p1.setEmail(request.getParameter("email"));
		p1.setPassword(request.getParameter("password"));	
		p1.setProfilepic(request.getParameter("profilepic"));
		String path=File.separator+"E:"+File.separator+"New folder"+File.separator+"myProject"+File.separator+"WebContent"+File.separator+"img";
		File f=new File("path");
		if(!f.exists())
		{
			f.mkdir();
		}
		Part p=request.getPart("profilepic");
		String path2=extractFilename(p);
		p.write(path+File.separator+path2);
		
		p1.setProfilepic(path2);		
		
		
		p1.setCity(request.getParameter("city"));
		p1.setState(request.getParameter("state"));
		p1.setMobileNo(request.getParameter("mobile"));
		p1.setDepartment(request.getParameter("d_name"));
		p1.setFlag("0");
		int status=dao.doadd(p1);
		 
		 	if(status>=0){
		 		
		 		
			 response.sendRedirect(request.getContextPath()+"/wp-content/portal/adduser.jsp?success=yes");
		 	}
		 	else {
			 response.sendRedirect(request.getContextPath()+"/wp-content/portal/adduser.jsp?success=no");
		 	}
		}
		
		if(actionCode.equals("register"))	
		{
			profile p1= new profile();
		p1.setRolltype(request.getParameter("r_type"));	
		p1.setFirstname(request.getParameter("f_name"));
		p1.setLastname(request.getParameter("l_name"));
		p1.setDob(request.getParameter("dob"));
		p1.setGender(request.getParameter("gender"));
		p1.setAddress(request.getParameter("add"));
		p1.setEmail(request.getParameter("email"));
		p1.setPassword(request.getParameter("password"));
		p1.setProfilepic(request.getParameter("profilepic"));
		String path=File.separator+"C:"+File.separator+"Users"+File.separator+"Roxat"+File.separator+"eclipse-workspace"+File.separator+"myProject"+File.separator+"WebContent"+File.separator+"img";
		File f=new File("path");
		if(!f.exists())
		{
			f.mkdir();
		}
		Part p=request.getPart("profilepic");
		String path2=extractFilename(p);
		p.write(path+File.separator+path2);
		
		p1.setProfilepic(path2);		
		
		
		p1.setCity(request.getParameter("city"));
		p1.setState(request.getParameter("state"));
		p1.setMobileNo(request.getParameter("mobile"));
		p1.setDepartment(request.getParameter("d_name"));
		p1.setFlag("0");
		int status=dao.doadd(p1);
		 
		 	if(status>=0){
			 response.sendRedirect(request.getContextPath()+"/wp-content/portal/login.jsp?success=yes");
		 	}
		 	else {
			 response.sendRedirect(request.getContextPath()+"/wp-content/portal/login.jsp?success=no");
		 	}
		}
		
	
		//for update detail in database of user
	if(actionCode.equals("update"))
	{
		
		profile p1= new profile();
		p1.setProfileid(Integer.parseInt(request.getParameter("profileid")));
		p1.setRolltype(request.getParameter("r_type"));	
		p1.setFirstname(request.getParameter("f_name"));
		p1.setLastname(request.getParameter("l_name"));
		p1.setDob(request.getParameter("dob"));
		p1.setGender(request.getParameter("gender"));
		p1.setAddress(request.getParameter("add"));
		p1.setEmail(request.getParameter("email"));
		p1.setPassword(request.getParameter("password"));
		p1.setProfilepic(request.getParameter("profilepic"));
		
		String path=File.separator+"C:"+File.separator+"Users"+File.separator+"Roxat"+File.separator+"eclipse-workspace"+File.separator+"myProject"+File.separator+"WebContent"+File.separator+"img";
		File f=new File("path");
		if(!f.exists())
		{
			f.mkdir();
		}
		Part p=request.getPart("profilepic");
		String path2=extractFilename(p);
		p.write(path+File.separator+path2);
		
		p1.setProfilepic(path2);		
		p1.setDepartment(request.getParameter("d_name"));
		p1.setCity(request.getParameter("city"));
		p1.setState(request.getParameter("state"));
		p1.setMobileNo(request.getParameter("mobile"));
		p1.setDepartment(request.getParameter("d_name"));
		p1.setFlag("1");
		int status=dao.doUpdate(p1);
		 
		 	if(status>=0){
			 response.sendRedirect(request.getContextPath()+"/Controller?actionCode=updateuser");
		 	}
		 	else {
			 response.sendRedirect(request.getContextPath()+"/wp-content/portal/adduser.jsp");
		 	}
		}
	//to Update issue in DB
	if(actionCode.equals("updateissuetype"))
	{
		
		Issuetype i1= new Issuetype();
		
		i1.setProfileid(Integer.parseInt(request.getParameter("profileid")));
		i1.setIssueDepartment(request.getParameter("i_department"));
		i1.setIssueType(request.getParameter("i_type"));
		int status=dao.doUpdateissuetype(i1);
		 	if(status>=0){
			 response.sendRedirect(request.getContextPath()+"/Controller?actionCode=viewissuetype");
		 	}
		 	else {
			 response.sendRedirect(request.getContextPath()+"/wp-content/portal/viewissuetype.jsp");
		 	}
		}
	

	//to add roll type in data base
		
	if(actionCode.equals("rolltype"))	
	{
		roll r1= new roll();
		r1.setRolltype(request.getParameter("r_type"));
		r1.setRollID(request.getParameter("r_id"));
	int status=dao.addroll(r1);
	 
	 	if(status>=0){
		 response.sendRedirect(request.getContextPath()+"/wp-content/portal/roll.jsp?success=yes");
	 	}
	 	else {
		 response.sendRedirect(request.getContextPath()+"/wp-content/portal/roll.jsp?success=no");
	 	}
	}
	
	// To Add Issue Type 
	if(actionCode.equals("issuetype"))	
	{
		Issuetype is1=new Issuetype();
		
		is1.setIssueType(request.getParameter("i_type"));
		is1.setIssueDepartment(request.getParameter("i_department"));
		
	int status=dao.addisuuetype(is1);
	 
	 	if(status>=0){
		 response.sendRedirect(request.getContextPath()+"/wp-content/portal/add_Issue_type.jsp?success=yes");
	 	}
	 	else {
		 response.sendRedirect(request.getContextPath()+"/wp-content/portal/add_Issue_type.jsp?success=no");
	 	}
	}
	//sTROE THE ISSUE IN DB
	if(actionCode.equals("postissue"))	
	{
		
		postissue ip= new postissue();
		ip.setEmployee_email(request.getParameter("e_email"));
		ip.setIsuuetype(request.getParameter("i_type"));
		ip.setDiscribeisuue(request.getParameter("discribe_issue"));
		ip.setTitle(request.getParameter("title"));
		ip.setFlag("0");
	int status=dao.postisuue(ip);
	 			
	 	if(status>=0){
	 		String userName=(String)request.getSession().getAttribute("Rolltype");
	 	    
	 		if(userName=="employee"){
	 			response.sendRedirect(request.getContextPath()+"/wp-content/employee/post_issue.jsp?");
	 		}
	 		else if(userName=="hade")
	 		{
	 			response.sendRedirect(request.getContextPath()+"/wp-content/hade/post_issue.jsp?");
	 		}
	 		else if(userName=="engineer")
	 		{
	 			response.sendRedirect(request.getContextPath()+"/wp-content/engineer/Dashboard.jsp");
	 		}
	 		else 
	 		{
	 			response.sendRedirect(request.getContextPath()+"/wp-content/portal/post_issue.jsp?");
	 		}
	 	}
	 		
		
	 	else {
		 response.sendRedirect(request.getContextPath()+"/wp-content/portal/post_issue.jsp?success=no");
	 	}
	}
	//update issue in the DB
	if(actionCode.equals("updateissue1"))
	{
		
		postissue p1=new postissue();
		p1.setEmployee_email(request.getParameter("e_id"));
		p1.setIsuuetype(request.getParameter("i_type"));
		p1.setDiscribeisuue(request.getParameter("discribe_issue"));
		p1.setProfileid(Integer.parseInt(request.getParameter("profileid")));
		p1.setTitle(request.getParameter("title"));
		int status=dao.doUpdateissue(p1);
		 	if(status>=0){
		 		String roll=(String) request.getSession().getAttribute("Rolltype");
		 		
		 		if(roll=="admin")
		 		{
			 response.sendRedirect(request.getContextPath()+"/Controller?actionCode=viewissue");
		 		}
		
		 	}
		 	else {
			 response.sendRedirect(request.getContextPath()+"/Controller?actionCode=viewissue");
		 	}
		}
	// add  the department in DB
	if(actionCode.equals("adddept"))	
	{
		department de=new department();
		de.setDepartment_id(request.getParameter("d_id"));
		de.setDeaprtment_Name(request.getParameter("d_name"));
		
		
	int status=dao.adddept(de);
	 
	 	if(status>=0){
		 response.sendRedirect(request.getContextPath()+"/wp-content/portal/roll.jsp?success=yes");
	 	}
	 	else {
		 response.sendRedirect(request.getContextPath()+"/wp-content/portal/roll.jsp?success=no");
	 	}
	}
	
	// store value in allocation
	
	
	
	if(actionCode.equals("allocated"))	
	{
		allocation ae=new allocation();
		
		ae.setProfileid(Integer.parseInt(request.getParameter("profileid")));
		ae.setEngineer_Email(request.getParameter("e_email"));
		ae.setEmployee_email(request.getParameter("email"));
		ae.setDiscribeisuue(request.getParameter("discribe"));
		ae.setIsuuetype(request.getParameter("i_type"));
		ae.setTitle(request.getParameter("title"));
		ae.setStatus(request.getParameter("status"));
		ae.setFlag("0");
		int status=dao.allocation(ae);
		
		
		String email=request.getParameter("e_email");
	    List<profile>email1=dao.validateemail(email);
	    
	    
		
	
		
	String host="smtp.gmail.com";  
	String port="587";
	  final String useremail="psiv13500@gmail.com";//change accordingly  
	  final String password="love12345";//change accordingly  
	    
	//  String to="sonoojaiswal1987@gmail.com";//change accordingly  
	  
	   //Get the session object  
	  Properties properties = new Properties();
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", port);
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");

	  /* Properties props = new Properties();  
	   props.put("mail.smtp.host",host);  
	   props.put("mail.smtp.auth", "true");  
	  */   
	   javax.mail.Session session = javax.mail.Session.getInstance(properties,  
	    new javax.mail.Authenticator() 
	   {  
	      protected PasswordAuthentication getPasswordAuthentication() 
	      {  
	    return new PasswordAuthentication(useremail,password);  
	      }  
	    });  
	  
	   //Compose the message  
	    try 
	    {  
	     MimeMessage message = new MimeMessage(session);  
	     message.setFrom(new InternetAddress(useremail));  
	    
	     message.addRecipient(Message.RecipientType.TO,new InternetAddress(email));  
	     message.setSubject("Problem ");  
	     message.setText("hello.. U get Problem Resolve That Problem thank you ");  
	       
	    //send the message  
	     Transport.send(message);  
	  
	     System.out.println("message sent successfully...");  
	     
	     
	     } 
	    
	    catch (MessagingException e) 
	        {
	     	e.printStackTrace();
	    	}  
	    if(status>=0){
			 response.sendRedirect(request.getContextPath()+"/Controller?actionCode=viewallocation");
		 	}
		 	else {
			 response.sendRedirect(request.getContextPath()+"/wp-content/portal/?success=no");
		 	}

	    
	
	
	}
	
	if(actionCode.equals("feedback"))	
	{
		feedback fe=new feedback();
		
		fe.setEmail(request.getParameter("email"));
		fe.setRating(request.getParameter("rating"));
		fe.setComment(request.getParameter("message"));
		
		int status=dao.addfeedback(fe);
	 
	 	if(status>=0){
		 response.sendRedirect(request.getContextPath()+"/wp-content/frontend/cross-issue.jsp?success=yes");
	 	}
	 	else {
		 response.sendRedirect(request.getContextPath()+"/wp-content/frontend/cross-issue.jsp?success=no");
	 	}
	}
	
	if(actionCode.equals("query"))	
	{
		anyquery aq=new anyquery();
		
		aq.setEmail(request.getParameter("email"));
		aq.setSubject(request.getParameter("subject"));
		aq.setMessage(request.getParameter("message"));
		
		
		
		int status=dao.addquery(aq);
	 
	 	if(status>=0){
		 response.sendRedirect(request.getContextPath()+"/wp-content/frontend/cross-issue.jsp?success=yes");
	 	}
	 	else {
		 response.sendRedirect(request.getContextPath()+"/wp-content/frontend/cross-issue.jsp?success=no");
	 	}
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	if(actionCode.equals("email"))	
	{
		int id=Integer.parseInt(request.getParameter("view_id"));
		
		ArrayList<allocation>arrayList=dao.sendemail(id);
		
		request.getSession().setAttribute("updateuser1", arrayList);
		allocation a1=new allocation();
		String email=request.getParameter("email");
	    List<profile>email1=dao.validateemail(email);
	    
	    String sendTo="";   
		Iterator iterator=arrayList.iterator();
		while(iterator.hasNext())
		{
			
			
	allocation allocation=(allocation)iterator.next();
		
	 sendTo= allocation.getEngineer_Email();
		}
	String host="smtp.gmail.com";  
	String port="587";
	  final String useremail="psiv13500@gmail.com";//change accordingly  
	  final String password="love12345";//change accordingly  
	    
	//  String to="sonoojaiswal1987@gmail.com";//change accordingly  
	  
	   //Get the session object  
	  Properties properties = new Properties();
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", port);
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");

	   Properties props = new Properties();  
	   props.put("mail.smtp.host",host);  
	   props.put("mail.smtp.auth", "true");  
	     
	   javax.mail.Session session = javax.mail.Session.getInstance(properties,  
	    new javax.mail.Authenticator() 
	   {  
	      protected PasswordAuthentication getPasswordAuthentication() 
	      {  
	    return new PasswordAuthentication(useremail,password);  
	      }  
	    });  
	  
	   //Compose the message  
	    try 
	    {  
	     MimeMessage message = new MimeMessage(session);  
	     message.setFrom(new InternetAddress(useremail));  
	    
	     message.addRecipient(Message.RecipientType.TO,new InternetAddress(sendTo));  
	     message.setSubject("Problem ");  
	     message.setText("hello.. U get Problem Resolve That Problem thank you ");  
	       
	    //send the message  
	     Transport.send(message);  
	  
	     System.out.println("message sent successfully...");  
	     response.sendRedirect(request.getContextPath() + "/wp-content/portal/Dashboard.jsp?msg=success");
	     
	     } 
	    
	    catch (MessagingException e) 
	        {
	     	e.printStackTrace();
	    	}  
	    
	
	
	}
	}


private String extractFilename(Part p) {
		
		String contentDisp = p.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1); //s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return "";
	}
}