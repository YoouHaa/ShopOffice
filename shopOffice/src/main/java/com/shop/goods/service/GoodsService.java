package com.shop.goods.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.goods.dao.GoodsDao;
import com.shop.table.vo.CategoryInfoVO;
import com.shop.table.vo.GoodsImgVO;
import com.shop.table.vo.GoodsInfoVO;



@Service
public class GoodsService {
	@Autowired
	GoodsDao dao;
	
	public ArrayList<GoodsInfoVO> selectlittlecate(GoodsInfoVO vo) throws Exception{
		return dao.selectlittlecate(vo);
	}
	public ArrayList<GoodsInfoVO> selectsupplierName(GoodsInfoVO vo) throws Exception{
		return dao.selectsupplierName(vo);
	}
	public ArrayList<GoodsInfoVO> selectgoodsList(GoodsInfoVO vo) throws Exception{
		return dao.selectgoodsList(vo);
	}
	public GoodsInfoVO selectgoodsDetail(GoodsInfoVO vo) throws Exception{
		return dao.selectgoodsDetail(vo);
	}
	
	
	public ArrayList<CategoryInfoVO> selectgoodsCategoryList(GoodsInfoVO vo) throws Exception{
		return dao.selectgoodsCategoryList(vo);
	}
	public ArrayList<CategoryInfoVO> selectgoodmCategoryList(GoodsInfoVO vo) throws Exception{
		return dao.selectgoodmCategoryList(vo);
	}
	public ArrayList<CategoryInfoVO> selectgoodhCategoryList(GoodsInfoVO vo) throws Exception{
		return dao.selectgoodhCategoryList(vo);
	}
	public int updategoodsUpdate(GoodsInfoVO vo) throws Exception{
		return dao.updategoodsUpdate(vo);
	}
	public int newGoodsAdd(GoodsInfoVO vo) throws Exception{
		return dao.newGoodsAdd(vo);
	}
	public int selectTotalGoodsCount(GoodsInfoVO vo) throws Exception{
		return dao.selectTotalGoodsCount(vo);
}
	public int delinsertgoods(GoodsInfoVO vo) throws Exception{
	return dao.delinsertgoods(vo);
}
	public int selectinsertgoods(GoodsImgVO vo) throws Exception{
	return dao.selectinsertgoods(vo);
}
	public int delgoodsimg(GoodsInfoVO vo) throws Exception{
	return dao.delgoodsimg(vo);
}
	public int updategoodsimg(GoodsInfoVO vo) throws Exception{
	return dao.updategoodsimg(vo);
}
	
	
}
