package cn.tomato.shop.product.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import cn.tomato.shop.product.vo.Product;

/**
 * 商品模块持久层
 * @author MadridSeven
 *
 */
public class ProductDao extends HibernateDaoSupport  {
	
	//首页上热门商品的查询
	public List<Product> findHot() {
		
		//使用离线条件查询
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		//查询热门的商品，条件为is_host = 1
		criteria.add(Restrictions.eq("is_hot",1 ));
		//倒序排序输出
		criteria.addOrder(Order.desc("pdate"));
		
		List list = this.getHibernateTemplate().findByCriteria(criteria, 0, 10);
		
		return list;
	}
	//首页上最新商品的查询
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
