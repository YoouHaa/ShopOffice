package com.shop.supplier.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.supplier.dao.SorderDao;
import com.shop.table.vo.GoodsInfoVO;
import com.shop.table.vo.SorderInfoVO;
import com.shop.table.vo.SupplierInfoVO;



@Service
public class SorderService {
	@Autowired
	SorderDao dao;
	public List<SorderInfoVO> selectSorderList(SorderInfoVO vo) throws Exception{
		return dao.selectSorderList(vo);
	}	
	public int selectTotalSorderCount(SorderInfoVO vo) throws Exception{
		return dao.selectTotalSorderCount(vo);
}
	public List<SupplierInfoVO> selectSupplierList(SupplierInfoVO vo) throws Exception{
		return dao.selectSupplierList(vo);
	}
	public SupplierInfoVO getSupplierInfo(SupplierInfoVO vo) throws Exception{
		return dao.getSupplierInfo(vo);
	}
	public GoodsInfoVO selectgetGoodsDetail(GoodsInfoVO vo) throws Exception{
		return dao.selectgetGoodsDetail(vo);
	}
	public List<GoodsInfoVO> selectgoodsCd(GoodsInfoVO vo) throws Exception{
		return dao.selectgoodsCd(vo);
	}
	
	public String selectMaxSupplierOrder() throws Exception{
		return dao.selectMaxSupplierOrder();
	}
	
	public int insertGoodsOrder(SorderInfoVO vo) throws Exception{
		return dao.insertGoodsOrder(vo);
	}
	
	public int insertSupplierOrder(SorderInfoVO vo) throws Exception{
		return dao.insertSupplierOrder(vo);
	}
}
