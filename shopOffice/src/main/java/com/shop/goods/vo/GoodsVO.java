package com.shop.goods.vo;

import java.util.ArrayList;

import com.shop.table.vo.GoodsInfoVO;
import com.shop.table.vo.PageVO;

public class GoodsVO extends PageVO{
	
	private ArrayList<GoodsInfoVO> list;
	
	
	public ArrayList<GoodsInfoVO> getList() {
		return list;
	}

	public void setList(ArrayList<GoodsInfoVO> list) {
		this.list = list;
	}
	
	
	
}
