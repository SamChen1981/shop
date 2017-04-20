package cn.tomato.shop.product.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import cn.tomato.shop.product.vo.Product;
import cn.tomato.shop.util.PageHibernateCallback;

/**
 * 商品模块持久层
 * 
 * @author MadridSeven
 *
 */
public class ProductDao extends HibernateDaoSupport {

	// 首页上热门商品的查询
	public List<Product> findHot() {

		// 使用离线条件查询
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		// 查询热门的商品，条件为is_host = 1
		criteria.add(Restrictions.eq("is_hot", 1));
		// 倒序排序输出
		criteria.addOrder(Order.desc("pdate"));

		List list = this.getHibernateTemplate().findByCriteria(criteria, 0, 10);

		return list;
	}

	// 首页上最新商品的查询
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
		// 分页另一种写法:
		List<Product> list = this.getHibernateTemplate()
				.execute(new PageHibernateCallback<Product>(hql, new Object[] { cid }, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
		
	}

	public int findCountCsid(Integer csid) {
		//根据二级分类查询商品个数
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
