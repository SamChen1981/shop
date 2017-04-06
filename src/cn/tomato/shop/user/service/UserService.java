package cn.tomato.shop.user.service;

import org.springframework.transaction.annotation.Transactional;

import cn.tomato.shop.user.dao.UserDao;
import cn.tomato.shop.user.vo.User;

/**
 * 用户模块业务层代码
 * @author MadridSeven
 *
 */
@Transactional //业务层要进行事务管理
public class UserService {
	
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	public User findByUserName(String username){
		
		return userDao.findByUserName(username);
		
	}

}
