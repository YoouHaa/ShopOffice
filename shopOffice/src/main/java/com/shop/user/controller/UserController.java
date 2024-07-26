package com.shop.user.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.table.vo.OrderInfoVO;
import com.shop.table.vo.UserInfoVO;
import com.shop.user.service.UserService;
import com.shop.user.vo.UserVO;

@Controller

public class UserController {

	@Autowired
	UserService service;
	
	@RequestMapping("/user/list")
	public String list() throws Exception {
		System.out.println("수정완료");
		return "user/list";
	}
	@RequestMapping("/getUserList")
	@ResponseBody
	public UserVO getUserList(@ModelAttribute("UserInfoVO") UserInfoVO vo) throws Exception{
		//PAGING
		int totalPage = service.selectTotalUserCount(vo); 
		
		List<UserInfoVO> list = service.selectUserList(vo);
		
		UserVO uservo = new UserVO();
		
		uservo.setUserlist(list);
		uservo.setTotal(totalPage); //총 데이터수.
		uservo.setStartPage(vo.getStartPage()); 
		uservo.setCurrentPage(vo.getCurrentPage());//현재페이지

		return uservo;
	}
	@RequestMapping("/getDetail")
	@ResponseBody
	public UserInfoVO getDetail(@ModelAttribute("UserInfoVO") UserInfoVO vo) throws Exception{
		UserInfoVO uservo = service.selectDetail(vo);
		
		List<OrderInfoVO> list = service.selectOrderList(vo);
 		// ctrl+shift+o 자동임포트
		uservo.setOrderlist(list);
		return uservo;
	}

}
