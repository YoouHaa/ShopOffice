package com.shop.supplier.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.supplier.service.SupplierService;
import com.shop.table.vo.SupplierInfoVO;
@Controller
public class SupplierController {
	
	@Autowired
	SupplierService service;
	
	@RequestMapping("/supplier/main")
	public String main() throws Exception {
		return "supplier/main";
	}
	@RequestMapping("/supplierList")
	@ResponseBody
	public ArrayList<SupplierInfoVO> supplierList(@ModelAttribute("SupplierInfoVO") SupplierInfoVO vo) throws Exception{
		ArrayList<SupplierInfoVO> list = service.selectsupplierList(vo);
		return list;
	}
	@RequestMapping("/supplierDetail")
	@ResponseBody
	public SupplierInfoVO supplierDetail(@ModelAttribute("SupplierInfoVO") SupplierInfoVO vo) throws Exception{
		SupplierInfoVO suppliervo = service.selectsupplierDetail(vo);
		return suppliervo;
	}
	@RequestMapping("/supplierupad")
	@ResponseBody
	public int supplierupad(@ModelAttribute("SupplierInfoVO") SupplierInfoVO vo) throws Exception{
		int cnt = 0;
		//vo.setPhone(vo.getPhone1()+"-"+vo.getPhone2()+"-"+vo.getPhone3());
		
		if(vo.getIuType().equals("U")) {		//수정
			cnt = service.updateSupplier(vo);
		}else if(vo.getIuType().equals("I")) {	//등록
			cnt = service.newSupplierAdd(vo);
		}
		
		return cnt;
	}
}
