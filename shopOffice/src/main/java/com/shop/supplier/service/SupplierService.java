package com.shop.supplier.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.supplier.dao.SupplierDao;
import com.shop.table.vo.SupplierInfoVO;



@Service
public class SupplierService {
	@Autowired
	SupplierDao dao;
	
	public ArrayList<SupplierInfoVO> selectsupplierList(SupplierInfoVO vo) throws Exception{
		return dao.selectsupplierList(vo);
	}
	public SupplierInfoVO selectsupplierDetail(SupplierInfoVO vo) throws Exception{
		return dao.selectsupplierDetail(vo);
	}
	public int updateSupplier(SupplierInfoVO vo) throws Exception{
		return dao.updateSupplier(vo);
	}
	public int newSupplierAdd(SupplierInfoVO vo) throws Exception{
		return dao.newSupplierAdd(vo);
	}
}
