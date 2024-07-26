package com.shop.supplier.vo;

import java.util.List;

import com.shop.table.vo.PageVO;
import com.shop.table.vo.SorderInfoVO;

public class SupplierVO extends PageVO{
	
	private List<SorderInfoVO> list;

	public List<SorderInfoVO> getList() {
		return list;
	}

	public void setList(List<SorderInfoVO> list) {
		this.list = list;
	}
	
	
	
	
	
}
