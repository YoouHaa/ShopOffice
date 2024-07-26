package com.shop.user.vo;

import java.util.ArrayList;
import java.util.List;

import com.shop.table.vo.BoardInfoVO;
import com.shop.table.vo.PageVO;
import com.shop.table.vo.UserInfoVO;

public class UserVO extends PageVO{
	private List<UserInfoVO> userlist;
	private ArrayList<BoardInfoVO> list;
	
	
	
	
	public ArrayList<BoardInfoVO> getList() {
		return list;
	}
	public void setList(ArrayList<BoardInfoVO> list) {
		this.list = list;
	}
	public List<UserInfoVO> getUserlist(){
		return userlist;
	}
	public void setUserlist(List<UserInfoVO> userlist) {
		this.userlist = userlist;
	}
	
}
