package cn.tomato.shop.category.service;

import java.util.List;

import cn.tomato.shop.category.dao.CategoryDao;
import cn.tomato.shop.category.vo.Category;

/**
 * 一级分类的业务层
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
