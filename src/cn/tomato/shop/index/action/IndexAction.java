package cn.tomato.shop.index.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 首页访问的Action
 * 
 * @author MadridSeven
 *
 */
public class IndexAction extends ActionSupport {

	
	private static final long serialVersionUID = 1L;

	/**
	 * 访问首页
	 */
	public String execute(){
		
		
		
		return "index";
	}
	
}
