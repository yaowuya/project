package cn.edu.scau.zxks.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.filefilter.IOFileFilter;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.scau.zxks.entity.Menu;
import cn.edu.scau.zxks.entity.User;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub

	}
	
	
	/**
	 * @author Pavilion 15
	 * 拦截器，用于登陆拦截和权限管理
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2) throws Exception {
		//获取请求的url
		String url = request.getRequestURI();
		
		//获取路径，用于转发
		String path = request.getContextPath();
		
		//获取登录时存在session里面的user
		User user = (User)request.getSession().getAttribute("user");
		
		/**
		 * 对一些登陆前应该允许的请求放行
		 * 特殊请求包括
		 * 	1.login:登陆请求
		 * 	2.regist:注册
		 * 	3.verify:验证码
		 * 	4.menu:菜单的自动生成
		 * 	5.check:注册验证
		 */
		if(url.contains("login") || url.contains("regist") || url.contains("verify") || url.contains("check")){
			return true;
		}
		
		//获取登录时存在session的menuList
		@SuppressWarnings("unchecked")
		List<Menu> menuList = (List<Menu>) request.getSession().getAttribute("menuList");
		
		//没有登陆的用户跳转到login.jsp
		if(user == null){
			response.sendRedirect(path  + "/login.jsp");
		}
		else{
			if(url.contains("menu"))return true;
			//遍历menuList，如果访问的url在menuList里面则为true
			for(int i = 0; i < menuList.size(); i++){
				if(url.contains(menuList.get(i).getUrl())){
					return true;
				}
			}
			
			//如果没有遍历到则表示该用户没有相关权限，跳转至index.jsp
			response.sendRedirect(path  + "/index.jsp");
		}
		return false;
	}

}
