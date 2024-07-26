package com.shop.supplier.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.GoodsInfoVO;
import com.shop.table.vo.SorderInfoVO;
import com.shop.table.vo.SupplierInfoVO;

@MapperScan(basePackages="com.shop.goods.dao")
public interface SorderDao {
	public List<SorderInfoVO> selectSorderList(SorderInfoVO vo) throws Exception;
	public int selectTotalSorderCount(SorderInfoVO vo) throws Exception;
	public List<SupplierInfoVO> selectSupplierList(SupplierInfoVO vo) throws Exception;
	public SupplierInfoVO getSupplierInfo(SupplierInfoVO vo) throws Exception;
	public GoodsInfoVO selectgetGoodsDetail(GoodsInfoVO vo) throws Exception;
	public List<GoodsInfoVO> selectgoodsCd(GoodsInfoVO vo) throws Exception;
	
	public String selectMaxSupplierOrder() throws Exception;
	public int insertGoodsOrder(SorderInfoVO vo) throws Exception;		//sub
	public int insertSupplierOrder(SorderInfoVO vo) throws Exception;	//master
}
