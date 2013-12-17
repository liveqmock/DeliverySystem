package com.bjtu.deliverysystem.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.HibernateException;

@SuppressWarnings("unchecked")
public class HibernateUtil {
	   private HibernateUtil() {}

	   
	   public static Session getSession() throws HibernateException{
	      Session session = (Session)HibernateUtil.session.get();
	      if( session == null ) {
	         session = sessionFactory.openSession();
	         HibernateUtil.session.set(session);
	      }
	      return session;
	   }
	   
	   public static void closeSession() throws HibernateException {
	        Session s = (Session) session.get();
	        if (s != null)
	            s.close();
	        session.set(null);
	    }
	   
	   private static final ThreadLocal session = new ThreadLocal();   
	   private static final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();   

}
