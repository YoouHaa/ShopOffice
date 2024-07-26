package com.shop.goods.dao;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.CategoryInfoVO;
import com.shop.table.vo.GoodsImgVO;
import com.shop.table.vo.GoodsInfoVO;

@MapperScan(basePackages="com.shop.goods.dao")
public interface GoodsDao {
	public ArrayList<GoodsInfoVO> selectlittlecate(GoodsInfoVO vo) throws Exception;
	public ArrayList<GoodsInfoVO> selectsupplierName(GoodsInfoVO vo) throws Exception;
	public ArrayList<GoodsInfoVO> selectgoodsList(GoodsInfoVO vo) throws Exception;
	public GoodsInfoVO selectgoodsDetail(GoodsInfoVO vo) throws Exception;
	public ArrayList<CategoryInfoVO> selectgoodsCategoryList(GoodsInfoVO vo) throws Exception;
	public ArrayList<CategoryInfoVO> selectgoodmCategoryList(GoodsInfoVO vo) throws Exception;
	public ArrayList<CategoryInfoVO> selectgoodhCategoryList(GoodsInfoVO vo) throws Exception;
	public int updategoodsUpdate(GoodsInfoVO vo) throws Exception;
	public int newGoodsAdd(GoodsInfoVO vo) throws Exception;
	public int selectTotalGoodsCount(GoodsInfoVO vo) throws Exception;
	public int delinsertgoods(GoodsInfoVO vo) throws Exception;
	public int selectinsertgoods(GoodsImgVO vo) throws Exception;
	public int delgoodsimg(GoodsInfoVO vo) throws Exception;
	public int updategoodsimg(GoodsInfoVO vo) throws Exception;
}
