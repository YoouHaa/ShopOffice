package com.shop.goods.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.goods.dao.CategoryDao;
import com.shop.table.vo.CategoryInfoVO;



@Service
public class CategoryService {
	@Autowired
	CategoryDao dao;
	
	public ArrayList<CategoryInfoVO> selectCategoryList(CategoryInfoVO vo) throws Exception{
		return dao.selectCategoryList(vo);
	}
	public ArrayList<CategoryInfoVO> selectCategory(CategoryInfoVO vo) throws Exception{
		return dao.selectCategory(vo);
	}
	public int updateCategory(CategoryInfoVO vo) throws Exception{
		return dao.updateCategory(vo);
	}
	public int newCategory(CategoryInfoVO vo) throws Exception{
		return dao.newCategory(vo);
	}
}
