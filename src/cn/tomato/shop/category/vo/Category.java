package cn.tomato.shop.category.vo;

import java.util.HashSet;
import java.util.Set;

import cn.tomato.shop.categorysecond.vo.CategorySecond;

/**
 * 一级分类的模型
 * @author MadridSeven
 *
 */

public class Category {
	
	private Integer cid;
	private String cname;
	private Set<CategorySecond> categorySeconds = new HashSet<CategorySecond>();
	public Integer getCid() {
		return cid;
	}
	public Set<CategorySecond> getCategorySeconds() {
		return categorySeconds;
	}
	public void setCategorySeconds(Set<CategorySecond> categorySeconds) {
		this.categorySeconds = categorySeconds;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	

}
