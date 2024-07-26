package com.shop.user.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.table.vo.BoardInfoVO;
import com.shop.user.dao.InquiryDao;

@Service
public class InquiryService {
	@Autowired
	InquiryDao dao;
	
	
	public ArrayList<BoardInfoVO> selectInquiryList(BoardInfoVO vo) throws Exception{
		return dao.selectInquiryList(vo);
	}
	public BoardInfoVO selectDetailReply(BoardInfoVO vo) throws Exception{
		return dao.selectDetailReply(vo);
	}
	public int updateReplyAdd(BoardInfoVO vo) throws Exception{
		return dao.updateReplyAdd(vo);
	}
	public int selectTotalInquiryCount(BoardInfoVO vo) throws Exception{
		return dao.selectTotalInquiryCount(vo);
	}
	
}
