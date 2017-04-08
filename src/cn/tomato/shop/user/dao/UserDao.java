package cn.tomato.shop.user.dao;

import java.util.List;

import cn.tomato.shop.user.vo.User;
import cn.tomato.shop.util.BaseDao;

/**
 * 用户模块持久层代码
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

	public void save(User user) {
		
		getSession().save(user);
		
	}

	public User login(User user) {
		String hql = "FROM User u WHERE u.username = ? AND u.password = ?";
		List<User> list = getSession().createQuery(hql).setString(0, user.getUsername()).setString(1, user.getPassword()).list();
		if(list!=null&&list.size()>0){
			return list.get(0);
		}
		return null;
	}
	
}
