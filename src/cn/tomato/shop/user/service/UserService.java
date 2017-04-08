package cn.tomato.shop.user.service;



import cn.tomato.shop.user.dao.UserDao;
import cn.tomato.shop.user.vo.User;


/**
 * 用户模块业务层代码
 * @author MadridSeven
 *
 */

public class UserService {
	
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	public User findByUserName(String username){
		
		return userDao.findByUserName(username);
		
	}

	public void save(User user) {
		
		userDao.save(user);
	}

	public User login(User user) {
		
		return userDao.login(user);
	}

	

}
