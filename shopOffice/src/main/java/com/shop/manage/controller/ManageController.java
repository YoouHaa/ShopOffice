package com.shop.manage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.manage.service.ManageService;
import com.shop.table.vo.ManageInfoVO;
import com.shop.util.AesUtil;
@Controller
public class ManageController {
	
	@Autowired
	ManageService service;
	@RequestMapping("/manage/list")
	public String list() throws Exception {
		return "manage/list";
	}
	
	@RequestMapping("/manageList")
	@ResponseBody
	public List<ManageInfoVO> manageList(@ModelAttribute("ManageInfoVO") ManageInfoVO vo) throws Exception{
		List<ManageInfoVO> list = service.selectManageList(vo);
		return list;
	}
	@RequestMapping("/MDetailList")
	@ResponseBody
	public ManageInfoVO DetailList(@ModelAttribute("ManageInfoVO") ManageInfoVO vo) throws Exception{
		ManageInfoVO mvo = service.selectMDetailList(vo);
		return mvo;
}
	@RequestMapping("/updateManage")
	@ResponseBody
	public int updateManage(@ModelAttribute("ManageInfoVO") ManageInfoVO vo) throws Exception{
		int cnt = 0;
		if(vo.getManagePwd()!=null) {
			String pwd = AesUtil.aesEncode(vo.getManagePwd());
			vo.setManagePwd(pwd);
		}
		if(vo.getIuType().equals("U")) {		//수정
			cnt = service.updateManage(vo);
		}else if(vo.getIuType().equals("I")) {	//등록
			cnt = service.newManage(vo);
		}
		return cnt;
}
}
