package cn.tomato.shop.product.service;

import java.util.List;

import cn.tomato.shop.product.dao.ProductDao;
import cn.tomato.shop.product.vo.Product;
import cn.tomato.shop.util.PageBean;
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

	public PageBean<Product> finByPageCid(Integer cid, int page) {
		// ����һ�������ҳ��ѯ��Ʒ
		PageBean<Product> pageBean = new PageBean<Product>();
		// ���õ�ǰҳ��:
		pageBean.setPage(page);
		// ����ÿҳ��ʾ��¼��:
		int limit = 8;
		pageBean.setLimit(limit);
		//  �����ܼ�¼��:
		int totalCount = 0 ;
		totalCount = productDao.findCountCid(cid);
		pageBean.setTotalCount(totalCount);
		// ������ҳ��:
		int totalPage = 0;
		// Math.ceil(totalCount / limit);
		if(totalCount % limit == 0){
			totalPage = totalCount / limit;
		}else{
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// ÿҳ��ʾ�����ݼ���:
		// ���Ŀ�ʼ:
		int begin = (page - 1) * limit;
		List<Product> list = productDao.findByPageCid(cid,begin,limit);
		pageBean.setList(list);
		return pageBean;
	}

}
