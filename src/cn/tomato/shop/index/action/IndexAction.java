package cn.tomato.shop.index.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.tomato.shop.category.service.CategoryService;
import cn.tomato.shop.category.vo.Category;
import cn.tomato.shop.product.service.ProductService;
import cn.tomato.shop.product.vo.Product;

/**
 * 首页访问的Action
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
	 * 访问首页
	 */
	public String execute(){
		//查询所有一级分类
		List<Category> clist = categoryService.findAll();
		//将查到的一级分类存入session
		if(clist!=null&&clist.size()>0){
			ActionContext.getContext().getSession().put("clist", clist);
		}
		//查询热门商品
		List<Product> hlist = productService.findHot();
		ActionContext.getContext().getValueStack().set("hlist", hlist);
		//查询最新商品
		List<Product> nlist = productService.findNew();
		ActionContext.getContext().getValueStack().set("nlist", nlist);
		return "index";
	}
	
}
