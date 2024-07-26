package com.shop.supplier.dao;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.SupplierInfoVO;

@MapperScan(basePackages="com.shop.goods.dao")
public interface SupplierDao {
	
	public ArrayList<SupplierInfoVO> selectsupplierList(SupplierInfoVO vo) throws Exception;
	public SupplierInfoVO selectsupplierDetail(SupplierInfoVO vo) throws Exception;
	public int updateSupplier(SupplierInfoVO vo) throws Exception;
	public int newSupplierAdd(SupplierInfoVO vo) throws Exception;
}
