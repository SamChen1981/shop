package cn.tomato.shop.product.service;

import java.util.List;

import cn.tomato.shop.product.dao.ProductDao;
import cn.tomato.shop.product.vo.Product;
import cn.tomato.shop.util.PageBean;
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

	public PageBean<Product> finByPageCid(Integer cid, int page) {
		// 根据一级分类分页查询商品
		PageBean<Product> pageBean = new PageBean<Product>();
		// 设置当前页数:
		pageBean.setPage(page);
		// 设置每页显示记录数:
		int limit = 8;
		pageBean.setLimit(limit);
		//  设置总记录数:
		int totalCount = 0 ;
		totalCount = productDao.findCountCid(cid);
		pageBean.setTotalCount(totalCount);
		// 设置总页数:
		int totalPage = 0;
		// Math.ceil(totalCount / limit);
		if(totalCount % limit == 0){
			totalPage = totalCount / limit;
		}else{
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 每页显示的数据集合:
		// 从哪开始:
		int begin = (page - 1) * limit;
		List<Product> list = productDao.findByPageCid(cid,begin,limit);
		pageBean.setList(list);
		return pageBean;
	}

}
