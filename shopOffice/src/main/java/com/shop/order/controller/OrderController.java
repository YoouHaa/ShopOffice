package com.shop.order.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.order.service.OrderService;
import com.shop.table.vo.OrderGoodsVO;
import com.shop.table.vo.OrderInfoVO;
@Controller
public class OrderController {
	
	@Autowired
	OrderService service;
	@RequestMapping("/order/list")
	public String main() throws Exception {
		return "order/list";
	}
	
	@RequestMapping("/orderList")
	@ResponseBody
	public ArrayList<OrderInfoVO> orderList(@ModelAttribute("OrderInfoVO") OrderInfoVO vo) throws Exception{
		ArrayList<OrderInfoVO> list = service.selectOrderList(vo);
		return list;
	}
	@RequestMapping("/updateorderStart")
	@ResponseBody
	public int updateorderStart(@ModelAttribute("OrderInfoVO") OrderInfoVO vo) throws Exception{
		int cnt = service.updateorderStart(vo);
		return cnt;
	}
	@RequestMapping("/updateorderDone")
	@ResponseBody
	public int updateorderDone(@ModelAttribute("OrderInfoVO") OrderInfoVO vo) throws Exception{
		int cnt = service.updateorderDone(vo);
		return cnt;
}
	@RequestMapping("/DetailList")
	@ResponseBody
	public OrderInfoVO DetailList(@ModelAttribute("OrderInfoVO") OrderInfoVO vo) throws Exception{
		OrderInfoVO goodsvo = service.selectDetailList(vo);
		
 		List<OrderGoodsVO> goodsD = service.selectgoodsDetailList(vo);
		
		goodsvo.setGoodsD(goodsD);
		return goodsvo;
	}
	@RequestMapping("/corderStatus")
	@ResponseBody
	public int updatecorderStatus(@ModelAttribute("OrderInfoVO") OrderInfoVO vo) throws Exception{
		int cnt = service.updatecorderStatus(vo);
		return cnt;
}
}
