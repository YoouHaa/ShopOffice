package com.shop.goods.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.goods.service.CategoryService;
import com.shop.table.vo.CategoryInfoVO;
@Controller
public class CategoryController {
	
	@Autowired
	CategoryService service;
	
	@RequestMapping("/goods/list")
	public String list() throws Exception {
		return "goods/list";
	}
	@RequestMapping("/getCategoryList")
	@ResponseBody
	public ArrayList<CategoryInfoVO> getCategoryList(@ModelAttribute("CategoryInfoVO") CategoryInfoVO vo) throws Exception{
		if(vo.getCtLevel()==null || vo.getCtLevel().equals("")) {
			vo.setCtLevel("1");
		}
		ArrayList<CategoryInfoVO> list = service.selectCategoryList(vo);
		return list;
	}
	@RequestMapping("/getCategory")
	@ResponseBody
	public ArrayList<CategoryInfoVO> getCategory(@ModelAttribute("CategoryInfoVO") CategoryInfoVO vo) throws Exception{
		if(vo.getCtLevel()==null || vo.getCtLevel().equals("")) {
			vo.setCtLevel("1");
		}
		ArrayList<CategoryInfoVO> list = service.selectCategory(vo);
		return list;
	}
	
	@RequestMapping("/updateCate")
	@ResponseBody
	public int getupdateCate(@ModelAttribute("CategoryInfoVO") CategoryInfoVO vo) throws Exception{
		//vo.setCtCd(vo.getUpCtCd());
		int cnt = service.updateCategory(vo);
		return cnt;
	}
	@RequestMapping("/newCategory")
	@ResponseBody
	public int getnewCategory(@ModelAttribute("CategoryInfoVO") CategoryInfoVO vo) throws Exception{
		//vo.setCtCd(vo.getUpCtCd());
		int cnt = service.newCategory(vo);
		return cnt;
	}

}
