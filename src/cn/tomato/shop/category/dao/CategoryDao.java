package cn.tomato.shop.category.dao;

import java.util.List;

import cn.tomato.shop.category.vo.Category;
import cn.tomato.shop.util.BaseDao;

/**
 * һ������ĳ־ò�
 * @author acer1
 *
 */

public class CategoryDao extends BaseDao {
	
	public List<Category> findAll(){
		
		String hql = "FROM Category";
		return getSession().createQuery(hql).list();
		
	}

}
