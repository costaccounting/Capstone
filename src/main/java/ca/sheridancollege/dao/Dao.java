package ca.sheridancollege.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.*;
import javax.persistence.Query;
import javax.persistence.criteria.*;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.hibernate.*;
import org.hibernate.cfg.*;

import ca.sheridancollege.beans.*;

public class Dao {

	SessionFactory sessionFactory = new Configuration().
			configure("hibernate.cfg.xml").buildSessionFactory();

//-----------------------------------------------------------******************************------------------------------------	
	
	public boolean addUser(RegisterUser register)
	{
		if(register!=null) {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			
			session.save(register);
			
			session.getTransaction().commit();
			session.close();
			return true;
		}
		else {
			return false;
		}	
	}
	
//-----------------------------------------------------------******************************------------------------------------	
	
	public List<String> getRole(String email, String password){
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		
		Query query = session.createQuery("select role from RegisterUser where email =:email and password =:password");
		query.setParameter("email", email);
		query.setParameter("password", password);
		
		List<String> register = (List<String>) query.getResultList();
		
		session.getTransaction().commit();
		session.close();
		
		return register;
	}

//-----------------------------------------------------------******************************------------------------------------	
	
		public List<String> getEmail(String email){
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			
			//Register register = session.get(Register.class, email, password);
			
			Query query = session.createQuery("select email from RegisterUser where email =:email");
			query.setParameter("email", email);
			
			List<String> register = (List<String>) query.getResultList();
			
			session.getTransaction().commit();
			session.close();
			
			return register;
		}
		
		
//-----------------------------------------------------------******************************------------------------------------	

		public List<String> getFirstName(String email){
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			
			//Register register = session.get(Register.class, email, password);
			
			Query query = session.createQuery("select firstName from RegisterUser where email =:email");
			query.setParameter("email", email);
			
			List<String> register = (List<String>) query.getResultList();
			
			session.getTransaction().commit();
			session.close();
			
			return register;
		}
		
//-----------------------------------------------------------******************************------------------------------------	
	
		public List<String> getLastName(String email){
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			
			//Register register = session.get(Register.class, email, password);
			
			Query query = session.createQuery("select lastName from RegisterUser where email =:email");
			query.setParameter("email", email);
			
			List<String> register = (List<String>) query.getResultList();
			
			session.getTransaction().commit();
			session.close();
			
			return register;
		}
		
//-----------------------------------------------------------******************************------------------------------------	
		
		public List<String> getDataForLawyer(String email){
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			
			//Register register = session.get(Register.class, email, password);
			
			Query query = session.createQuery("from RegisterUser where email != :email AND role != :role");
			query.setParameter("email", email);
			query.setParameter("role", "Admin");
			
			
			List<String> register = (List<String>) query.getResultList();
			
			session.getTransaction().commit();
			session.close();
			
			return register;
		}

//-----------------------------------------------------------******************************------------------------------------	
		
		public List<String> getDataForAdmin(String email) {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			
			Query query = session.createQuery("from RegisterUser where email != :email");
			query.setParameter("email", email);
			
			
			List<String> register = (List<String>) query.getResultList();
			
			session.getTransaction().commit();
			session.close();
			
			return register;
		}
		
		
//-----------------------------------------------------------******************************------------------------------------	
		public void deleteUser(String email) {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			
			RegisterUser register = (RegisterUser)session.get(RegisterUser.class, email);
			session.delete(register);
			
			session.getTransaction().commit();
			session.close();
		}
		
		
//-----------------------------------------------------------******************************------------------------------------	
		
		public List<String> validateUser(RegisterUser reg) {
			List<String> err = new ArrayList<String>();
			
			ValidatorFactory vf = Validation.buildDefaultValidatorFactory();
			
			Validator val = vf.getValidator();
			
			Set<ConstraintViolation<RegisterUser>> violationError = val.validate(reg);
			
			if(!violationError.isEmpty()) {
				for(ConstraintViolation<RegisterUser> error: violationError) {
					err.add(error.getPropertyPath() + ": :" + error.getMessage());
				}
			}
			return err;
		}
}
