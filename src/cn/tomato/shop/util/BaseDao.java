package cn.tomato.shop.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author MadridSeven
 *
 */

@Transactional  //�˴�һ��Ҫ��set��get����������������Could not obtain transaction-synchronized Session for current thread
public class BaseDao {
	
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Session getSession(){
		return this.sessionFactory.getCurrentSession();
	}

}
