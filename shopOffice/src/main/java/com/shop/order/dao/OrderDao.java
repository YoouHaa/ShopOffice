package com.shop.order.dao;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.OrderGoodsVO;
import com.shop.table.vo.OrderInfoVO;

@MapperScan(basePackages="com.shop.order.dao")
public interface OrderDao {
	public ArrayList<OrderInfoVO> selectOrderList(OrderInfoVO vo) throws Exception;
	public int updateorderStart(OrderInfoVO vo) throws Exception;
	public int updateorderDone(OrderInfoVO vo) throws Exception;
	public OrderInfoVO selectDetailList(OrderInfoVO vo) throws Exception;
	public ArrayList<OrderGoodsVO> selectgoodsDetailList(OrderInfoVO vo) throws Exception;
	public int updatecorderStatus(OrderInfoVO vo) throws Exception;
}
