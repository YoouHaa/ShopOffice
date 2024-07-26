package com.shop.dash.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.dash.service.DashService;
import com.shop.dash.vo.DashVO;
import com.shop.table.vo.DashInfoVO;
import com.shop.table.vo.OrderInfoVO;
import com.shop.table.vo.SorderInfoVO;
@Controller
public class DashController {
	
	@Autowired
	DashService service;
	
	@RequestMapping("/dash/main")
	public String main() throws Exception {
		return "dash/main";
	}
	@RequestMapping("/getDashAllList")
	@ResponseBody
	public DashInfoVO getAllList() throws Exception{
		int userCnt = service.selectDashUserCount();
		int goodsCnt = service.selectDashGoodsCount();
		int supplierCnt = service.selectDashsupplierCount();
		int orderCnt = service.selectDashorderCount();
		List<DashInfoVO> status = service.selectDashSatus();
		ArrayList<OrderInfoVO> mon = service.selectMonthPrice();
		ArrayList<OrderInfoVO> od = service.selectMonthOrder();
		
		DashInfoVO vo = new DashInfoVO();
		
		vo.setUserCnt(userCnt);
		vo.setGoodsCnt(goodsCnt);
		vo.setSupplierCnt(supplierCnt);
		vo.setOrderCnt(orderCnt);
		vo.setStatus(status);
		vo.setMon(mon);
		vo.setOd(od);
		return  vo;
	}
	@RequestMapping("/getWorderList")
	@ResponseBody
	public ArrayList<OrderInfoVO> getWorderList() throws Exception{
		ArrayList<OrderInfoVO> list = service.selectWorderList();
		
		return list;
	}
	@RequestMapping("/getWcomeList")
	@ResponseBody
	public DashVO getWcomeList(@ModelAttribute("DashVO") DashVO vo) throws Exception{
		
		ArrayList<SorderInfoVO> list = service.selectWcomeList(vo);
		int totalPage = service.selectTotalWCount(); 
		DashVO dashvo = new DashVO();
		dashvo.setList(list);
		dashvo.setTotal(totalPage); //총 데이터수.
		dashvo.setStartPage(vo.getStartPage()); 
		dashvo.setCurrentPage(vo.getCurrentPage());//
		
		return dashvo;
	}
	
	
}
