package cn.tomato.shop.user.service;

import org.springframework.transaction.annotation.Transactional;

import cn.tomato.shop.user.dao.UserDao;
import cn.tomato.shop.user.vo.User;

/**
 * �û�ģ��ҵ������
 * @author MadridSeven
 *
 */
@Transactional //ҵ���Ҫ�����������
public class UserService {
	
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	public User findByUserName(String username){
		
		return userDao.findByUserName(username);
		
	}

}
