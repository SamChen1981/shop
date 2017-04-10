package cn.tomato.shop.product.service;

import java.util.List;

import cn.tomato.shop.product.dao.ProductDao;
import cn.tomato.shop.product.vo.Product;
/**
 * 商品模块业务层
 * @author MadridSeven
 *
 */
public class ProductService {

	private ProductDao productDao;

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public List<Product> findHot() {
		// 首页显示热门商品
		return productDao.findHot();
	}

	public List<Product> findNew() {
		// 首页显示最新商品
		return productDao.findNew();
	}

	public Product findByPid(Integer pid) {
		// 根据商品ID查询商品信息
		return productDao.findByPid(pid);
	}

}
