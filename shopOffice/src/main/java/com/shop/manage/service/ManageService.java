package com.shop.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.shop.manage.dao.ManageDao;
import com.shop.table.vo.ManageInfoVO;



@Service
public class ManageService {
	@Autowired
	ManageDao dao;
	public  List<ManageInfoVO> selectManageList(ManageInfoVO vo) throws Exception{
		return dao.selectManageList(vo);
	}
	public ManageInfoVO selectMDetailList(@ModelAttribute("ManageInfoVO") ManageInfoVO vo) throws Exception{
		return dao.selectMDetailList(vo);
	}
	public int updateManage(@ModelAttribute("ManageInfoVO") ManageInfoVO vo) throws Exception{
		return dao.updateManage(vo);
	}
	public int newManage(@ModelAttribute("ManageInfoVO") ManageInfoVO vo) throws Exception{
		return dao.insertnewManage(vo);
	}
}
