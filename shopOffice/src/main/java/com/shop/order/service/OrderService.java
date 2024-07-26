package com.shop.order.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.order.dao.OrderDao;
import com.shop.table.vo.OrderGoodsVO;
import com.shop.table.vo.OrderInfoVO;



@Service
public class OrderService {
	@Autowired
	OrderDao dao;
	public ArrayList<OrderInfoVO> selectOrderList(OrderInfoVO vo) throws Exception{
		return dao.selectOrderList(vo);
	}
	
	public int updateorderStart(OrderInfoVO vo) throws Exception{
		return dao.updateorderStart(vo);
	}
	
	public int updateorderDone(OrderInfoVO vo) throws Exception{
		return dao.updateorderDone(vo);
	}
	public OrderInfoVO selectDetailList(OrderInfoVO vo) throws Exception{
		return dao.selectDetailList(vo);
	}
	
	public ArrayList<OrderGoodsVO> selectgoodsDetailList(OrderInfoVO vo) throws Exception{
		return dao.selectgoodsDetailList(vo);
	}
	public int updatecorderStatus(OrderInfoVO vo) throws Exception{
		return dao.updatecorderStatus(vo);
	}
}
