package com.shop.calculate.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.calculate.service.CalService;
import com.shop.calculate.vo.CalVO;
import com.shop.table.vo.CalInfoVO;
import com.shop.user.vo.UserVO;
@Controller
public class CalController {
	
	@Autowired
	CalService service;
	
	@RequestMapping("/cal/main")
	public String main() throws Exception {
		return "cal/main";
	}
	@RequestMapping("/getScheduleList")
	@ResponseBody
	public CalVO getScheduleList(@ModelAttribute("CalInfoVO") CalInfoVO vo) throws Exception{
		int totalPage = service.selectTotalCalCount(vo); 
		ArrayList<CalInfoVO> list = service.selectScheduleList(vo);
		CalVO calvo = new CalVO();
		calvo.setList(list);
		calvo.setTotal(totalPage); //총 데이터수.
		calvo.setStartPage(vo.getStartPage()); 
		calvo.setCurrentPage(vo.getCurrentPage());//
		return calvo;
	}
	
}
