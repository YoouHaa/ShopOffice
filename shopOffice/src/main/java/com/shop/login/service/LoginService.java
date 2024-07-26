package com.shop.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.login.dao.LoginDao;
import com.shop.table.vo.ManageInfoVO;

@Service
public class LoginService {

	@Autowired
	LoginDao dao;
	
	public ManageInfoVO selectManageInfo(ManageInfoVO vo) throws Exception{
		return dao.selectManageInfo(vo);
	}
}
