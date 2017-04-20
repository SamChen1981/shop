package cn.tomato.shop.index.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.tomato.shop.category.service.CategoryService;
import cn.tomato.shop.category.vo.Category;
import cn.tomato.shop.product.service.ProductService;
import cn.tomato.shop.product.vo.Product;

/**
 * ��ҳ���ʵ�Action
 * 
 * @author MadridSeven
 *
 */
public class IndexAction extends ActionSupport {

	
	private static final long serialVersionUID = 1L;
	
	private CategoryService categoryService;
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	
	private ProductService productService;
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	/**
	 * ������ҳ
	 */
	public String execute(){
		//��ѯ����һ������
		List<Category> clist = categoryService.findAll();
		//���鵽��һ���������session
		if(clist!=null&&clist.size()>0){
			ActionContext.getContext().getSession().put("clist", clist);
		}
		//��ѯ������Ʒ
		List<Product> hlist = productService.findHot();
		ActionContext.getContext().getValueStack().set("hlist", hlist);
		//��ѯ������Ʒ
		List<Product> nlist = productService.findNew();
		ActionContext.getContext().getValueStack().set("nlist", nlist);
		return "index";
	}
	
}
