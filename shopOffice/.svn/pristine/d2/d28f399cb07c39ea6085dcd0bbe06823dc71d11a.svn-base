package com.shop.goods.dao;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.CategoryInfoVO;

@MapperScan(basePackages="com.shop.goods.dao")
public interface CategoryDao {
	
	public ArrayList<CategoryInfoVO> selectCategoryList(CategoryInfoVO vo) throws Exception;
	public ArrayList<CategoryInfoVO> selectCategory(CategoryInfoVO vo) throws Exception;
	public int updateCategory(CategoryInfoVO vo) throws Exception;
	public int newCategory(CategoryInfoVO vo) throws Exception;
}
