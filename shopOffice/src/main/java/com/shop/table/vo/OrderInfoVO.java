package com.shop.table.vo;

import java.util.List;

public class OrderInfoVO {
	private String orderNo;
	private String userId;
	private String orderGoodsName;
	private String orderPrice;
	private String orderStatus;
	private String orderDt;
	private String receiveName;
	private String zipcd;
	private String addr;
	private String addrDtl;
	private String memo;
	private String regDt;
	private String phone;
	private String buyQty;
	private String payment;
	private String unitPrice;
	
	private String userName;
	private String regDtFrom;
	private String regDtTo;
	
	private List<String> orderlist;		//주문번호에 대한 리스트
	
	private List<OrderGoodsVO> goodsD;
	
 	
	
	
	
	public String getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(String unitPrice) {
		this.unitPrice = unitPrice;
	}
	public List<OrderGoodsVO> getGoodsD() {
		return goodsD;
	}
	public void setGoodsD(List<OrderGoodsVO> goodsD) {
		this.goodsD = goodsD;
	}
	public List<String> getOrderlist() {
		return orderlist;
	}
	public void setOrderlist(List<String> orderlist) {
		this.orderlist = orderlist;
	}
	
	public String getRegDtFrom() {
		return regDtFrom;
	}
	public void setRegDtFrom(String regDtFrom) {
		this.regDtFrom = regDtFrom;
	}
	public String getRegDtTo() {
		return regDtTo;
	}
	public void setRegDtTo(String regDtTo) {
		this.regDtTo = regDtTo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getBuyQty() {
		return buyQty;
	}
	public void setBuyQty(String buyQty) {
		this.buyQty = buyQty;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
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
	public String getOrderGoodsName() {
		return orderGoodsName;
	}
	public void setOrderGoodsName(String orderGoodsName) {
		this.orderGoodsName = orderGoodsName;
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
	public String getOrderDt() {
		return orderDt;
	}
	public void setOrderDt(String orderDt) {
		this.orderDt = orderDt;
	}
	public String getReceiveName() {
		return receiveName;
	}
	public void setReceiveName(String receiveName) {
		this.receiveName = receiveName;
	}
	public String getZipcd() {
		return zipcd;
	}
	public void setZipcd(String zipcd) {
		this.zipcd = zipcd;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getAddrDtl() {
		return addrDtl;
	}
	public void setAddrDtl(String addrDtl) {
		this.addrDtl = addrDtl;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	
	
	
}

