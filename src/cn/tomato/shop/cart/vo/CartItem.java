package cn.tomato.shop.cart.vo;

import cn.tomato.shop.product.vo.Product;
/**
 * ���������
 * @author MadridSeven
 *
 */
public class CartItem {
	private Product product;	// ����������Ʒ��Ϣ
	private int count;			// ����ĳ����Ʒ����
	@SuppressWarnings("unused")
	private double subtotal;	// ����ĳ����ƷС��
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}
	// С���Զ������.
	public double getSubtotal() {
		return count * product.getShop_price();
	}
	
}
