package cn.tomato.shop.user.action;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.tomato.shop.user.service.UserService;
import cn.tomato.shop.user.vo.User;
/**
 * 用户操作Action
 * 
 * @author MadridSeven
 *
 */
public class UserAction extends ActionSupport implements ModelDriven<User> {

	
	private static final long serialVersionUID = 1L;
	
	private User user = new User();
	
	private String checkcode;
	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}
	
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	/**
	 * 跳转到注册页面
	 * @return
	 */
	public String registPage(){
		
		return "registPage";
	}
	/**
	 * 根据username查询用户
	 * @return
	 * @throws IOException
	 */
	public String findByUserName() throws IOException{
		
		User existUser = userService.findByUserName(user.getUsername());
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		if(existUser != null){
			response.getWriter().println("<font color='red'>用户名已存在</font>");
		}else{
			response.getWriter().println("<font color='green'>用户名可以使用</font>");
		}
		
		return NONE;
		
	}
	
	public String regist(){
		//判断验证码
		String checkcode1 = (String) ServletActionContext.getRequest().getSession().getAttribute("checkcode");
		if(!(this.checkcode.equalsIgnoreCase(checkcode1))){
			this.addActionError("验证码输入错误");
			return "checkCodeFile";
		}
		userService.save(user);
		this.addActionMessage("注册成功，请登录");
		
		return "msg";
	}
	
	public String loginPage(){
		return "loginPage";
	}
	
	public String login(){
		User existUser = userService.login(user);
		if(existUser == null){
			this.addActionMessage("登录失败，用户名或密码错误");
			return LOGIN;
		}else{
			ServletActionContext.getRequest().getSession().setAttribute("existUser", existUser);
			return "loginSuccess";
		}
		
	}
	
	public String quit(){
		ServletActionContext.getRequest().getSession().invalidate();
		return "quit";
	}

	

}
