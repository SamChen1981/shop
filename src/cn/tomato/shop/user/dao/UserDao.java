package cn.tomato.shop.user.dao;

import java.util.List;

import cn.tomato.shop.user.vo.User;
import cn.tomato.shop.util.BaseDao;

/**
 * �û�ģ��־ò����
 * @author MadridSeven
 *
 */
public class UserDao extends BaseDao {

	public User findByUserName(String username){
		
		String hql = "FROM User u WHERE u.username=?";
		
		List<User> list = getSession().createQuery(hql).setString(0, username).list();
		if(list != null && list.size()>0){
			return list.get(0);
		}
		return null;
	}
	
}
