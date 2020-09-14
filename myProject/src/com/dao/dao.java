package com.dao;




import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;









import org.hibernate.criterion.Restrictions;




import com.model.Issuetype;
import com.model.allocation;
import com.model.anyquery;
import com.model.department;
import com.model.feedback;
import com.model.postissue;
import com.model.profile;
import com.model.roll;
import com.model.allocation;
import com.model.feedback;
import com.util.HibernateConnection;



public class dao {
	
	HibernateConnection hibernateConnection = new HibernateConnection();
	SessionFactory s1=HibernateConnection.getSessionFactory();

	// Add User In DB
	public int doadd(profile p1) {
		// TODO Auto-generated method stub
		Session session=null;
		Transaction transaction=null;
		int status=0;
		try{
			session=s1.openSession();
			transaction=session.beginTransaction();
			session.save(p1);
			transaction.commit();
			return status;
			
		}
		catch(Exception e){
			e.printStackTrace();
			return status;
		}
		finally{
			session.close();
		}
		
		
	}
	
	//View User From DB
	public ArrayList<profile> viewuser() {
		// TODO Auto-generated method stub
		Session session=null;
		java.util.ArrayList<profile>profile1=null;
		try {
			session=s1.openSession();
			profile1=(ArrayList<profile>)session.createCriteria(profile.class).add(Restrictions.eq("flag","1")).list();
			return profile1;
		} catch (Exception e) {
				e.printStackTrace();
			// TODO: handle exception
				return profile1;
		}
				finally {
					session.close();
				}
	}
	
	
	public ArrayList<profile> approve() {
		// TODO Auto-generated method stub
		Session session=null;
		java.util.ArrayList<profile>profile1=null;
		try {
			session=s1.openSession();
			profile1=(ArrayList<profile>)session.createCriteria(profile.class).list();
			return profile1;
		} catch (Exception e) {
				e.printStackTrace();
			// TODO: handle exception
				return profile1;
		}
				finally {
					session.close();
				}
	}
	
	//Update User In DB
	public ArrayList<profile> updateuser() {
		// TODO Auto-generated method stub
		Session session=null;
		java.util.ArrayList<profile>profile1=null;
		try {
			session=s1.openSession();
			profile1=(ArrayList<profile>)session.createCriteria(profile.class).list();
			return profile1;
		} catch (Exception e) {
				e.printStackTrace();
			// TODO: handle exception
				return profile1;
		}
				finally {
					session.close();
				}
	}

	// Add Roll Type In DB
	public int addroll(roll r1) {
		// TODO Auto-generated method stub
		Session session=null;
		Transaction transaction=null;
		int status=0;
		try{
			session=s1.openSession();
			transaction=session.beginTransaction();
			session.save(r1);
			transaction.commit();
			return status;
			
		}
		catch(Exception e){
			e.printStackTrace();
			return status;
		}
		finally{
			session.close();
		}
		
	}
		// To View Roll Type IN Regestrion Form
	public ArrayList<roll> viweroll() {
		// TODO Auto-generated method stub
		Session session=null;
		java.util.ArrayList<roll>roll=null;
		try {
			session=s1.openSession();
			roll=(ArrayList<roll>)session.createCriteria(roll.class).list();
			return roll;
		} catch (Exception e) {
				e.printStackTrace();
			// TODO: handle exception
				return roll;
		}
				finally {
					session.close();
				}
	}
	
	//Update View User From DB In Update Form
	public ArrayList<profile> updateuser1(int id) {
		// TODO Auto-generated method stub
		Session session=null;
		java.util.ArrayList<profile>profile1=null;
		try {
			session=s1.openSession();
			profile1=(ArrayList<profile>)session.createCriteria(profile.class).add(Restrictions.eq("profileid", id)).list();
			return profile1;
		} catch (Exception e) {
				e.printStackTrace();
			// TODO: handle exception
				return null;
		}
				finally {
					session.close();
				}
	}
	
	
	
	

	public java.util.List<profile> validateemail(String email) {
		// TODO Auto-generated method stub
		
		Session session = null;
		try {
			session= s1.openSession();
			List<profile>userslist = session.createCriteria(profile.class).add(Restrictions.eq("emailAdress", email)).list();
			return userslist;
			
		}
		catch (Exception e) {
			e.printStackTrace();
			return null;
			
		}
	}

	public int doUpdate(profile p1) {
		Session session=null;
		Transaction transaction=null;
		int status=0;
		try{
			session=s1.openSession();
			transaction=session.beginTransaction();
			session.update(p1);
			transaction.commit();
			return status;
			
		}
		catch(Exception e){
			e.printStackTrace();
			return status;
		}
		finally{
			session.close();
		}
	}

	
	public int addisuuetype(Issuetype is1) {
		// TODO Auto-generated method stub
	Session session=null;
	Transaction transaction =null;
	int status=0;
	try {
		session = s1.openSession();
		transaction =session.beginTransaction();
		session.save(is1);
		transaction.commit();
		return status;
	} catch (Exception e) {
		e.printStackTrace();
		return status;
		// TODO: handle exception
	}
	finally{
		session.close();
	}
	}
	//To View Issue Type From DB
	public ArrayList<Issuetype> viewissuetyep() {
		Session session=null;
		java.util.ArrayList<Issuetype>viewissuetype=null;
		try {
			session=s1.openSession();
			viewissuetype=(ArrayList<Issuetype>)session.createCriteria(Issuetype.class).list();
			return viewissuetype;
		} catch (Exception e) {
				e.printStackTrace();
			// TODO: handle exception
				return viewissuetype;
		}
				finally {
					session.close();
				}
	}

	//to see list of issue in form
	public ArrayList<Issuetype> updateissueform(int id) {
		// TODO Auto-generated method stub
		Session session=null;
		java.util.ArrayList<Issuetype>formissue=null;
		try {
			session=s1.openSession();
			formissue=(ArrayList<Issuetype>)session.createCriteria(Issuetype.class).add(Restrictions.eq("profileid", id)).list();
			return formissue;
		} catch (Exception e) {
				e.printStackTrace();
			// TODO: handle exception
				return formissue;
		}
				finally {
					session.close();
				}
	}
	//to update issue type in DB
	public int doUpdateissuetype(Issuetype i1) {
		
		Session session=null;
		Transaction transaction=null;
		int status=0;
		try{
			session=s1.openSession();
			transaction=session.beginTransaction();
			session.update(i1);
			transaction.commit();
			return status;
			
		}
		catch(Exception e){
			e.printStackTrace();
			return status=1;
		}
		finally{
			session.close();
		}
		
	}

	public ArrayList<Issuetype> issuetype() {
		Session session=null;
		java.util.ArrayList<Issuetype>issuetype=null;
		try {
			session=s1.openSession();
			issuetype=(ArrayList<Issuetype>)session.createCriteria(Issuetype.class).list();
			return issuetype;
		} catch (Exception e) {
				e.printStackTrace();
			// TODO: handle exception
				return issuetype;
		}
				finally {
					session.close();
				}
		
		
	}

	public int postisuue(postissue ip) {
		Session session=null;
		Transaction transaction=null;
		int status=0;
		try{
			session=s1.openSession();
			transaction=session.beginTransaction();
			session.save(ip);
			transaction.commit();
			return status;
			
		}
		catch(Exception e){
			e.printStackTrace();
			return status=1;
		}
		finally{
			session.close();
		}
	}
	// to view issue list to admin
	public ArrayList<postissue> viewissue() {
		Session session=null;
		java.util.ArrayList<postissue>viewisuue=null;
		try
		{
		session=s1.openSession();
		viewisuue=(ArrayList<postissue>)session.createCriteria(postissue.class).list();
		return viewisuue;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return viewisuue;
		}
		 finally
		 {
			 session.close();
		 }
		
	}
	// post the issue in db
	public int doUpdateissue(postissue p1) {
		// TODO Auto-generated method stub
		Session session=null;
		Transaction transaction=null;
		int status=0;
		try{
			session=s1.openSession();
			transaction=session.beginTransaction();
			session.update(p1);
			transaction.commit();
			return status;
			
		}
		catch(Exception e){
			e.printStackTrace();
			return status=1;
		}
		finally{
			session.close();
		}
	}
	// view in form 
	public ArrayList<postissue> viewissue(int id) {
		// TODO Auto-generated method stub
		Session session=null;
		java.util.ArrayList<postissue>formissue=null;
		try {
			session=s1.openSession();
			formissue=(ArrayList<postissue>)session.createCriteria(postissue.class).add(Restrictions.eq("profileid", id)).list();
			return formissue;
		} catch (Exception e) {
				e.printStackTrace();
			// TODO: handle exception
				return formissue;
		}
				finally {
					session.close();
				}
	}

	public int adddept(department de) {
		Session session=null;
		Transaction transaction=null;
		int status=0;
		try
		{
			session=s1.openSession();
			transaction=session.beginTransaction();
			session.save(de);
			transaction.commit();
			return status;
		}
		catch(Exception e){
			e.printStackTrace();
			return status=1;
			
		}
		finally{
			session.close();
		}
		
	}

	public ArrayList<department> viewdept() {
		Session session=null;
		java.util.ArrayList<department>dept=null;
		try
		{
		session=s1.openSession();
		dept=(ArrayList<department>)session.createCriteria(department.class).list();
		return dept;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return dept;
		}
		 finally
		 {
			 session.close();
		 }

	}

	public int allocation(allocation ae) {
		// TODO Auto-generated method stub
		Session session=null;
		Transaction transaction=null;
		int status=0;
		try
		{
			session=s1.openSession();
			transaction=session.beginTransaction();
			session.save(ae);
			transaction.commit();
			return status;
		}
		catch(Exception e){
			e.printStackTrace();
			return status=1;
			
		}
		finally{
			session.close();
		}
	}
	//list of allocatied issue
	public ArrayList<allocation> viewallocation(Object object) {
		// TODO Auto-generated method stub
		Session session=null;
		java.util.ArrayList<allocation>allo=null;
		try
		{
		session=s1.openSession();
		allo=(ArrayList<allocation>)session.createCriteria(allocation.class).add(Restrictions.eq("status","Pannding")).add(Restrictions.eq("flag", "0")).add(Restrictions.eq("Engineer_Email",object )).list();
		
		return allo;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return allo;
		}
		 finally
		 {
			 session.close();	
		 }
	}
	
	//see the issue post in timeline
	public ArrayList<postissue> viewissueall(int id) {
		// TODO Auto-generated method stub
		Session session=null;
		java.util.ArrayList<postissue>formissue=null;
		try {
			session=s1.openSession();
			formissue=(ArrayList<postissue>)session.createCriteria(postissue.class).list();
			return formissue;
		} catch (Exception e) {
				e.printStackTrace();
			// TODO: handle exception
				return formissue;
		}
				finally {
					session.close();
				}
      }
	
	
//Delete user from the portal
	public int deleteuser(profile p1) {
		Session session=null;
		Transaction transaction=null;
		int status=0;
		try
		{
			session=s1.openSession();
			transaction=session.beginTransaction();
			  

			Query q=session.createSQLQuery("update profile set flag= :na where profileid= :profileid");  

			
			q.setParameter("na","0");
			q.setParameter("profileid",p1.getProfileid());
			status =q.executeUpdate();
			transaction.commit();
			return status;
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return status;
		}
		// TODO Auto-generated method stub
		
	}
	
	
	
//see the user list in delete 
	public ArrayList<profile> viewdeleteuser() {
		Session session=null;
		java.util.ArrayList<profile>profile1=null;
		try {
			session=s1.openSession();
			profile1=(ArrayList<profile>)session.createCriteria(profile.class).add(Restrictions.eq("flag","1")).list();
			return profile1;
		} catch (Exception e) {
				e.printStackTrace();
			// TODO: handle exception
				return profile1;
		}
				finally {
					session.close();
				}
	}
	
	
	//update approve flag 
	public int approveuser(profile p1) {
		// TODO Auto-generated method stub
		Session session=null;
		Transaction transaction=null;
		int status=0;
		try
		{
			session=s1.openSession();
			transaction=session.beginTransaction();
			  

			Query q=session.createSQLQuery("update profile set flag= :na where profileid= :profileid");  

			
			q.setParameter("na","1");
			q.setParameter("profileid",p1.getProfileid());
			status =q.executeUpdate();
			transaction.commit();
			return status;
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return status;
		}
	}
	//see the user in approve page
	public ArrayList<profile> viewapproveuser() {
		// TODO Auto-generated method stub
		Session session=null;
		java.util.ArrayList<profile>profile1=null;
		try {
			session=s1.openSession();
			profile1=(ArrayList<profile>)session.createCriteria(profile.class).add(Restrictions.eq("flag","0")).list();
			return profile1;
		} catch (Exception e) {
				e.printStackTrace();
			// TODO: handle exception
				return profile1;
		}
				finally {
					session.close();
				}
	}
	//delete allocation in alocate list
	public int deleteallocation(allocation a1) {
		// TODO Auto-generated method stub
		Session session=null;
		Transaction transaction=null;
		int status=0;
		try
		{
			session=s1.openSession();
			transaction=session.beginTransaction();
			  

			Query q=session.createSQLQuery("update allocation	 set flag= :na where profileid= :profileid");  

			
			q.setParameter("na","1");
			q.setParameter("profileid",a1.getProfileid());
			status =q.executeUpdate();
			transaction.commit();
			return status;
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return status;
		}
	}

	public ArrayList<allocation> sendemail(int id) {
		// TODO Auto-generated method stub
		Session session=null;
		java.util.ArrayList<allocation>formissue=null;
		try {
			session=s1.openSession();
			formissue=(ArrayList<allocation>)session.createCriteria(allocation.class).add(Restrictions.eq("profileid", id)).list();
			return formissue;
		} catch (Exception e) {
				e.printStackTrace();
			// TODO: handle exception
				return formissue;
		}
				finally {
					session.close();
				}

	}
	//show the issue list in resove page wher 
	public ArrayList<allocation> resoveissue() {
		Session session=null;
		java.util.ArrayList<allocation> allo=null;
		try
		{
		session=s1.openSession();
		allo=(ArrayList<allocation>)session.createCriteria(allocation.class).add(Restrictions.eq("status","Pannding")).list();
		return allo;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return allo;
		}
		 finally
		 {
			 session.close();
		 }
	}

	public int solveissue(allocation a1) {
		Session session=null;
		Transaction transaction=null;
		int status=0;
		try
		{
			session=s1.openSession();
			transaction=session.beginTransaction();
			  

			Query q=session.createSQLQuery("update allocation	 set status = :na where profileid= :profileid");  

			
			q.setParameter("na","complet");
			q.setParameter("profileid",a1.getProfileid());
			status =q.executeUpdate();
			transaction.commit();
			return status;
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return status;
		}
	}

	public ArrayList<profile> dologin(String string, String string2) {
		Session session=null;
			java.util.ArrayList<profile>login=null;
			try
			{
				session=s1.openSession();
				login=(ArrayList<profile>)session.createCriteria(profile.class).add(Restrictions.eq("email", string)).add(Restrictions.eq("password", string2)).add(Restrictions.eq("flag","1")).list();
				return login;
			}
			catch (Exception e){
				e.printStackTrace();
				return login;
				
			}
	
	}

	public ArrayList<profile> manageprofile(int id) {
		
			// TODO Auto-generated method stub
			Session session=null;
			java.util.ArrayList<profile>profile1=null;
			try {
				session=s1.openSession();
				profile1=(ArrayList<profile>)session.createCriteria(profile.class).add(Restrictions.eq("profileid", id)).list();
				return profile1;
			} catch (Exception e) {
					e.printStackTrace();
				// TODO: handle exception
					return null;
			}
					finally {
						session.close();
					}
		}

	public int addfeedback(feedback fe) {
		Session session=null;
		Transaction transaction=null;
		int status=0;
		try
		{
			session=s1.openSession();
			transaction=session.beginTransaction();
			session.save(fe);
			transaction.commit();
			return status;
		}
		catch(Exception e){
			e.printStackTrace();
			return status=1;
			
		}
		finally{
			session.close();
		}
	}

	public ArrayList<feedback> viewfeedback() {
		Session session=null;
		java.util.ArrayList<feedback>feed=null;
		try
		{
		session=s1.openSession();
		feed=(ArrayList<feedback>)session.createCriteria(feedback.class).list();
		return feed;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return feed;
		}
		 finally
		 {
			 session.close();
		 }

	}

	public ArrayList<allocation> viewallocationadmin() {
		Session session=null;
		java.util.ArrayList<allocation>allo=null;
		try
		{
		session=s1.openSession();
		allo=(ArrayList<allocation>)session.createCriteria(allocation.class).add(Restrictions.eq("status","Pannding")).add(Restrictions.eq("flag", "0")).list();
		
		return allo;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return allo;
		}
		 finally
		 {
			 session.close();	
		 }
	}

	public ArrayList<allocation> viewallocationhade(Object attribute) {
		Session session=null;
		java.util.ArrayList<allocation>allo=null;
		try
		{
		session=s1.openSession();
		allo=(ArrayList<allocation>)session.createCriteria(allocation.class).add(Restrictions.eq("status","Pannding")).add(Restrictions.eq("flag", "0")).add(Restrictions.eq("Department",attribute )).list();
		
		return allo;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return allo;
		}
		 finally
		 {
			 session.close();	
		 }
	}

	public int addquery(anyquery aq) {
		Session session=null;
		Transaction transaction=null;
		int status=0;
		try
		{
			session=s1.openSession();
			transaction=session.beginTransaction();
			session.save(aq);
			transaction.commit();
			return status;
		}
		catch(Exception e){
			e.printStackTrace();
			return status=1;
			
		}
		finally{
			session.close();
		}
	}
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
