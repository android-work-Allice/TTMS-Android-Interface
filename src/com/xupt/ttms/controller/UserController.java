package com.xupt.ttms.controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xupt.ttms.service.UserService;
import com.xupt.ttms.vo.EmployeeInfo;

/**
 * @author WangFeng 
 * @date 2017������5������26������ ������������9:32:32 
 * @version 1.0 
 */
@RequestMapping(value = "/user")
@Controller
public class UserController {
	
	@Resource
	private UserService userService;
	
	@RequestMapping(value = "/login")
	public String login(String account, String pwd, ModelMap model, HttpSession session,HttpServletResponse response){
		EmployeeInfo info = this.userService.getInfoByAccount(account);
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		if(info == null){
			model.put("msg", "������������������������������������������������������������");
//			out.println(-1);
//            out.flush();
//            out.close();
			return "login";
		} else {
			if(!info.getEmpPwd().equals(pwd)){
				model.put("msg", "������������������������������");
//				out.println(0);
//	            out.flush();
//	            out.close();
				return "login";
			} else {
				session.setAttribute("user_info", info);
				if(info.getEmpPosition().equals("������������������")){
//					out.println(1);//管理员
//		            out.flush();
//		            out.close();
					return "redirect:/stdio/list";
				} else {
//					out.println(1);//管理员
//		            out.flush();
//		            out.close();
					return "redirect:/seller/ticket.html";
				}
			}
		}
	}
	
//	@RequestMapping(value="/updateUser")
//	public String updateUser(EmployeeInfo emp, ModelMap model){
//		
//	}
}
