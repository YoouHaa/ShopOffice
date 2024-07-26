package com.shop.calculate.dao;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.CalInfoVO;

@MapperScan(basePackages="com.shop.calculate.dao")
public interface CalDao {
	
	public ArrayList<CalInfoVO> selectScheduleList(CalInfoVO vo) throws Exception;
	public int selectTotalCalCount(CalInfoVO vo)throws Exception;
}
