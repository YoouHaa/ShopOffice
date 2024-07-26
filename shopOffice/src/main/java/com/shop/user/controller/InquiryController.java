package com.shop.user.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.table.vo.BoardInfoVO;
import com.shop.user.service.InquiryService;
import com.shop.user.vo.UserVO;

@Controller
public class InquiryController {
	@Autowired
	InquiryService service;
	
	@RequestMapping("/inquiry/list")
	public String list() throws Exception {
		return "inquiry/list";
	}
	
	
	@RequestMapping("/getInquiryList")
	@ResponseBody
	public UserVO getInquiryList(@ModelAttribute("BoardInfoVO") BoardInfoVO vo) throws Exception{
		ArrayList<BoardInfoVO> list = service.selectInquiryList(vo);
		//1. 전체 데이터 개수를 조회한다.
		int totalPage = service.selectTotalInquiryCount(vo); 

		UserVO invo = new UserVO();
		invo.setList(list);
		invo.setTotal(totalPage); //총 데이터수.
		invo.setStartPage(vo.getStartPage()); 
		invo.setCurrentPage(vo.getCurrentPage());//
		return invo;
	}
	@RequestMapping("/getDetailReply")
	@ResponseBody
	public BoardInfoVO getDetailReply(@ModelAttribute("BoardInfoVO") BoardInfoVO vo) throws Exception{
		BoardInfoVO usvo = service.selectDetailReply(vo);
		return usvo;
	}
	@RequestMapping("/getReplyAdd")
	@ResponseBody
	public int getReplyAdd(@ModelAttribute("BoardInfoVO") BoardInfoVO vo) throws Exception{
		int cnt = service.updateReplyAdd(vo);
		return cnt;
	}
	
}
