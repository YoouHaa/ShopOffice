package com.shop.dash.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dash.dao.DashDao;
import com.shop.dash.vo.DashVO;
import com.shop.table.vo.DashInfoVO;
import com.shop.table.vo.OrderInfoVO;
import com.shop.table.vo.SorderInfoVO;



@Service
public class DashService {
	@Autowired
	DashDao dao;
	public int selectDashUserCount() throws Exception{
		return dao.selectDashUserCount();
	}
	public int selectDashGoodsCount() throws Exception{
		return dao.selectDashGoodsCount();
	}
	public int selectDashsupplierCount() throws Exception{
		return dao.selectDashsupplierCount();
	}
	public int selectDashorderCount() throws Exception{
		return dao.selectDashorderCount();
	}
	public int selectDashStatusCount() throws Exception{
		return dao.selectDashStatusCount();
	}
	public List<DashInfoVO> selectDashSatus() throws Exception{
		return dao.selectDashSatus();
	}
	public ArrayList<OrderInfoVO> selectWorderList() throws Exception{
		return dao.selectWorderList();
	}
	public ArrayList<SorderInfoVO> selectWcomeList(DashVO vo) throws Exception{
		return dao.selectWcomeList(vo);
	}
	public int selectTotalWCount() throws Exception{
		return dao.selectTotalWCount();
	}
	public ArrayList<OrderInfoVO> selectMonthPrice() throws Exception{
		return dao.selectMonthPrice();
	}
	public ArrayList<OrderInfoVO> selectMonthOrder() throws Exception{
		return dao.selectMonthOrder();
	}
}
