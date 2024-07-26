package com.shop.calculate.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.calculate.dao.CalDao;
import com.shop.table.vo.CalInfoVO;



@Service
public class CalService {
	@Autowired
	CalDao dao;
	
	 public ArrayList<CalInfoVO> selectScheduleList(CalInfoVO vo) throws Exception{ return
	 dao.selectScheduleList(vo); 
	 }
	 public int selectTotalCalCount(CalInfoVO vo)throws Exception{
		 return dao.selectTotalCalCount(vo);
	 }
	 
}
