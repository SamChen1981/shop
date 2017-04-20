package cn.tomato.shop.product.action;



import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.tomato.shop.category.service.CategoryService;
import cn.tomato.shop.category.vo.Category;
import cn.tomato.shop.product.service.ProductService;
import cn.tomato.shop.product.vo.Product;
import cn.tomato.shop.util.PageBean;
/**
 * 商品模块的action
 * @author MadridSeven
 *
 */
public class ProductAction extends ActionSupport implements ModelDriven<Product>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Product product = new Product();
	public Product getModel() {
		
		return product;
	}

	private ProductService productService;
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	
	private CategoryService categoryService;
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	
	private Integer cid;
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	private Integer csid;
	
	public Integer getCsid() {
		return csid;
	}

	public void setCsid(Integer csid) {
		this.csid = csid;
	}

	public Integer getCid() {
		return cid;
	}
	
	private int page;

	public void setPage(int page) {
		this.page = page;
	}
	
	public String findByPid(){
		
		product = productService.findByPid(product.getPid());
		
		return "findByPid";
	}
	//根据分类的ID查询商品
	public String findByCid(){
		
		PageBean<Product> pageBean = productService.finByPageCid(cid,page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByCid";
	}
	//根据二级分类id查询商品
	public String findByCsid(){
		
		PageBean<Product> pageBean = productService.findByPageCsid(csid,page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByCsid";
	}
	

}
