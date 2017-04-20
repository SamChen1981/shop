package cn.tomato.shop.product.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import cn.tomato.shop.product.vo.Product;
import cn.tomato.shop.util.PageHibernateCallback;

/**
 * ��Ʒģ��־ò�
 * 
 * @author MadridSeven
 *
 */
public class ProductDao extends HibernateDaoSupport {

	// ��ҳ��������Ʒ�Ĳ�ѯ
	public List<Product> findHot() {

		// ʹ������������ѯ
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		// ��ѯ���ŵ���Ʒ������Ϊis_host = 1
		criteria.add(Restrictions.eq("is_hot", 1));
		// �����������
		criteria.addOrder(Order.desc("pdate"));

		List list = this.getHibernateTemplate().findByCriteria(criteria, 0, 10);

		return list;
	}

	// ��ҳ��������Ʒ�Ĳ�ѯ
	public List<Product> findNew() {

		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);

		criteria.addOrder(Order.desc("pdate"));

		List list = this.getHibernateTemplate().findByCriteria(criteria, 0, 10);

		return list;
	}

	public Product findByPid(Integer pid) {

		return this.getHibernateTemplate().get(Product.class, pid);
	}

	public int findCountCid(Integer cid) {
		String hql = "select count(*) from Product p where p.categorySecond.category.cid = ?";
		List<Long> list = (List<Long>) this.getHibernateTemplate().find(hql, cid);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;

	}

	public List<Product> findByPageCid(Integer cid, int begin, int limit) {
		
		String hql = "select p from Product p join p.categorySecond cs join cs.category c where c.cid = ?";
		// ��ҳ��һ��д��:
		List<Product> list = this.getHibernateTemplate()
				.execute(new PageHibernateCallback<Product>(hql, new Object[] { cid }, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
		
	}

	public int findCountCsid(Integer csid) {
		//���ݶ��������ѯ��Ʒ����
		String hql = "select count(*) from Product p where p.categorySecond.csid = ?";
		List<Long> list = (List<Long>) this.getHibernateTemplate().find(hql, csid);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		
		return 0;
	}

	public List<Product> findByPageCsid(Integer csid, int begin, int limit) {
		String hql = "select p from Product p join p.categorySecond cs where cs.csid = ?";
		List<Product> list = this.getHibernateTemplate()
				.execute(new PageHibernateCallback<Product>(hql, new Object[] { csid }, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

}
