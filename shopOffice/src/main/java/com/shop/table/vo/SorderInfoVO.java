package com.shop.table.vo;

import java.util.List;

public class SorderInfoVO extends PageVO{

	private String orderNo;
	private String supplierCd;
	private String orderPrice;
	private String orderStatus;
	private String regDt;
	private String incomeDt;
	private String goodsCd;
	private String goodsName;
	private String buyQty;
	private String unitPrice;
	
	private String supplierName;
	private String incomeDtFrom;
	private String incomeDtTo;
	private String phone;
	private String opPhone;
	private String supplierCeo;
	private String opEmail;
	
	private List<SupplierGoodsVO> goodslist;
	
	
	
	
	public List<SupplierGoodsVO> getGoodslist() {
		return goodslist;
	}
	public void setGoodslist(List<SupplierGoodsVO> goodslist) {
		this.goodslist = goodslist;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getOpPhone() {
		return opPhone;
	}
	public void setOpPhone(String opPhone) {
		this.opPhone = opPhone;
	}
	public String getSupplierCeo() {
		return supplierCeo;
	}
	public void setSupplierCeo(String supplierCeo) {
		this.supplierCeo = supplierCeo;
	}
	public String getOpEmail() {
		return opEmail;
	}
	public void setOpEmail(String opEmail) {
		this.opEmail = opEmail;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getIncomeDtFrom() {
		return incomeDtFrom;
	}
	public void setIncomeDtFrom(String incomeDtFrom) {
		this.incomeDtFrom = incomeDtFrom;
	}
	public String getIncomeDtTo() {
		return incomeDtTo;
	}
	public void setIncomeDtTo(String incomeDtTo) {
		this.incomeDtTo = incomeDtTo;
	}
	public String getGoodsCd() {
		return goodsCd;
	}
	public void setGoodsCd(String goodsCd) {
		this.goodsCd = goodsCd;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getBuyQty() {
		return buyQty;
	}
	public void setBuyQty(String buyQty) {
		this.buyQty = buyQty;
	}
	public String getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(String unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getSupplierCd() {
		return supplierCd;
	}
	public void setSupplierCd(String supplierCd) {
		this.supplierCd = supplierCd;
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
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	public String getIncomeDt() {
		return incomeDt;
	}
	public void setIncomeDt(String incomeDt) {
		this.incomeDt = incomeDt;
	}
	
	
	
	
	
}

