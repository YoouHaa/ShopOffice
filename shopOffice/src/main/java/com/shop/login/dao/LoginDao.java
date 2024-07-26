package com.shop.login.dao;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.ManageInfoVO;

@MapperScan(basePackages="com.shop.login.dao")
public interface LoginDao {
	public ManageInfoVO selectManageInfo(ManageInfoVO vo) throws Exception;
}
