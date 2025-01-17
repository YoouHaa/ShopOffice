package com.shop.user.dao;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;

import com.shop.table.vo.BoardInfoVO;

@MapperScan(basePackages="com.shop.user.dao")
public interface InquiryDao {
	
	public ArrayList<BoardInfoVO> selectInquiryList(BoardInfoVO vo) throws Exception;
	public BoardInfoVO selectDetailReply(BoardInfoVO vo) throws Exception;
	public int updateReplyAdd(BoardInfoVO vo) throws Exception;
	public int selectTotalInquiryCount(BoardInfoVO vo) throws Exception;
}
