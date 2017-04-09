package cn.tomato.shop.category.service;

import java.util.List;

import cn.tomato.shop.category.dao.CategoryDao;
import cn.tomato.shop.category.vo.Category;

/**
 * һ�������ҵ���
 * @author MadridService
 *
 */

public class CategoryService {
	
	private CategoryDao categoryDao;
	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}
	
	public List<Category> findAll(){
		return categoryDao.findAll();
	}
	
	
}
