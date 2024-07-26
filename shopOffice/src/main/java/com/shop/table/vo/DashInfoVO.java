package com.shop.table.vo;

import java.util.ArrayList;
import java.util.List;

public class DashInfoVO extends PageVO{

	private int userCnt;
	private int goodsCnt;
	private int supplierCnt;
	private int orderCnt;
	private String orderStatus;
	private String orderGoodsName;
	
	private List<DashInfoVO> status;
	
	private String orderNo;
	private String userId;
	private String userName;
	private String goodsName;
	private String orderPrice;
	private String supplierName;
	private ArrayList<OrderInfoVO> list;
	private ArrayList<SorderInfoVO> vo;
	private ArrayList<OrderInfoVO> mon;
	private ArrayList<OrderInfoVO> od;
	private String orderDate;
	private String totalPrice;
	
	
	
	

	public ArrayList<OrderInfoVO> getOd() {
		return od;
	}

	public void setOd(ArrayList<OrderInfoVO> od) {
		this.od = od;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public ArrayList<OrderInfoVO> getMon() {
		return mon;
	}

	public void setMon(ArrayList<OrderInfoVO> mon) {
		this.mon = mon;
	}

	public String getOrderGoodsName() {
		return orderGoodsName;
	}

	public void setOrderGoodsName(String orderGoodsName) {
		this.orderGoodsName = orderGoodsName;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public ArrayList<OrderInfoVO> getList() {
		return list;
	}

	public void setList(ArrayList<OrderInfoVO> list) {
		this.list = list;
	}

	public ArrayList<SorderInfoVO> getVo() {
		return vo;
	}

	public void setVo(ArrayList<SorderInfoVO> vo) {
		this.vo = vo;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	

	public String getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(String orderPrice) {
		this.orderPrice = orderPrice;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public List<DashInfoVO> getStatus() {
		return status;
	}

	public void setStatus(List<DashInfoVO> status) {
		this.status = status;
	}

	
	public int getSupplierCnt() {
		return supplierCnt;
	}

	public void setSupplierCnt(int supplierCnt) {
		this.supplierCnt = supplierCnt;
	}

	public int getGoodsCnt() {
		return goodsCnt;
	}

	public void setGoodsCnt(int goodsCnt) {
		this.goodsCnt = goodsCnt;
	}

	

	public int getOrderCnt() {
		return orderCnt;
	}

	public void setOrderCnt(int orderCnt) {
		this.orderCnt = orderCnt;
	}

	public int getUserCnt() {
		return userCnt;
	}

	public void setUserCnt(int userCnt) {
		this.userCnt = userCnt;
	}

	
	
	
}
