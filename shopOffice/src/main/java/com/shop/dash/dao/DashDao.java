package com.shop.dash.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.dash.vo.DashVO;
import com.shop.table.vo.DashInfoVO;
import com.shop.table.vo.OrderInfoVO;
import com.shop.table.vo.SorderInfoVO;

@MapperScan(basePackages="com.shop.dash.dao")
public interface DashDao {
	
	public int selectDashUserCount() throws Exception;
	public int selectDashGoodsCount() throws Exception;
	public int selectDashsupplierCount() throws Exception;
	public int selectDashorderCount() throws Exception;
	public int selectDashStatusCount() throws Exception;
	public List<DashInfoVO> selectDashSatus() throws Exception;
	public ArrayList<OrderInfoVO> selectWorderList() throws Exception;
	public ArrayList<SorderInfoVO> selectWcomeList(DashVO  vo) throws Exception;
	public int selectTotalWCount() throws Exception;
	public ArrayList<OrderInfoVO> selectMonthPrice() throws Exception;
	public ArrayList<OrderInfoVO> selectMonthOrder() throws Exception;
}
