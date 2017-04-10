package cn.tomato.shop.product.action;



import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.tomato.shop.product.service.ProductService;
import cn.tomato.shop.product.vo.Product;
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
	
	public String findByPid(){
		
		product = productService.findByPid(product.getPid());
		
		return "findByPid";
	}
	
	

}
