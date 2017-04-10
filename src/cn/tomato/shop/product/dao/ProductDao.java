package cn.tomato.shop.product.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import cn.tomato.shop.product.vo.Product;

/**
 * ��Ʒģ��־ò�
 * @author MadridSeven
 *
 */
public class ProductDao extends HibernateDaoSupport  {
	
	//��ҳ��������Ʒ�Ĳ�ѯ
	public List<Product> findHot() {
		
		//ʹ������������ѯ
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		//��ѯ���ŵ���Ʒ������Ϊis_host = 1
		criteria.add(Restrictions.eq("is_hot",1 ));
		//�����������
		criteria.addOrder(Order.desc("pdate"));
		
		List list = this.getHibernateTemplate().findByCriteria(criteria, 0, 10);
		
		return list;
	}
	//��ҳ��������Ʒ�Ĳ�ѯ
	public List<Product> findNew() {
		
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		
		criteria.addOrder(Order.desc("pdate"));
		
		List list = this.getHibernateTemplate().findByCriteria(criteria,0,10);
		
		return list;
	}
	public Product findByPid(Integer pid) {
				
		return this.getHibernateTemplate().get(Product.class, pid);
	}

}
