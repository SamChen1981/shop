package cn.tomato.shop.product.service;

import java.util.List;

import cn.tomato.shop.product.dao.ProductDao;
import cn.tomato.shop.product.vo.Product;
/**
 * ��Ʒģ��ҵ���
 * @author MadridSeven
 *
 */
public class ProductService {

	private ProductDao productDao;

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public List<Product> findHot() {
		// ��ҳ��ʾ������Ʒ
		return productDao.findHot();
	}

	public List<Product> findNew() {
		// ��ҳ��ʾ������Ʒ
		return productDao.findNew();
	}

	public Product findByPid(Integer pid) {
		// ������ƷID��ѯ��Ʒ��Ϣ
		return productDao.findByPid(pid);
	}

}
