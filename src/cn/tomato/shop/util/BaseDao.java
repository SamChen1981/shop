package cn.tomato.shop.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;


/**
 * 
 * @author MadridSeven
 *
 */


public class BaseDao {
	
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Session getSession(){
		return this.sessionFactory.getCurrentSession();
	}

}
