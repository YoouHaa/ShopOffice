package com.shop.table.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class GoodsInfoVO extends PageVO{
			
	
	private String goodsCd;
	private String goodsName;
	private String normalPrice;
	private String sellPrice;
	private String ivQty;
	private String goodsStatus;
	private String supplierCd;
	private String thumnailUrl;
	private String content;
	private String regDt;
	
	private String upCtCd;
	private String ctLevel;
	private String ctCd;
	private String ctName;
	private String dae;
	private String joong;
	private String so;
	private String supplierName;
	private String categorySmall;
	private String categoryMiddle;
	private String categoryHigh;
	
	private List<CategoryInfoVO> categorydae;
	private List<CategoryInfoVO> categoryjung;
	private List<CategoryInfoVO> categoryso;
	
	private List<GoodsInfoVO> sGoodsCd;
	
	@JsonIgnore
	private MultipartFile thumnailFile;
	
	@JsonIgnore
	private List<MultipartFile> imgFileList;
	
	
	private String iuType;	//I 등록, U 수정
	
	
	
	
	public List<MultipartFile> getImgFileList() {
		return imgFileList;
	}
	public void setImgFileList(List<MultipartFile> imgFileList) {
		this.imgFileList = imgFileList;
	}
	public MultipartFile getThumnailFile() {
		return thumnailFile;
	}
	public void setThumnailFile(MultipartFile thumnailFile) {
		this.thumnailFile = thumnailFile;
	}
	public List<GoodsInfoVO> getsGoodsCd() {
		return sGoodsCd;
	}
	public void setsGoodsCd(List<GoodsInfoVO> sGoodsCd) {
		this.sGoodsCd = sGoodsCd;
	}
	public String getIuType() {
		return iuType;
	}
	public void setIuType(String iuType) {
		this.iuType = iuType;
	}
	public List<CategoryInfoVO> getCategorydae() {
		return categorydae;
	}
	public void setCategorydae(List<CategoryInfoVO> categorydae) {
		this.categorydae = categorydae;
	}
	public List<CategoryInfoVO> getCategoryjung() {
		return categoryjung;
	}
	public void setCategoryjung(List<CategoryInfoVO> categoryjung) {
		this.categoryjung = categoryjung;
	}
	public List<CategoryInfoVO> getCategoryso() {
		return categoryso;
	}
	public void setCategoryso(List<CategoryInfoVO> categoryso) {
		this.categoryso = categoryso;
	}
	public String getCategorySmall() {
		return categorySmall;
	}
	public void setCategorySmall(String categorySmall) {
		this.categorySmall = categorySmall;
	}
	public String getCategoryMiddle() {
		return categoryMiddle;
	}
	public void setCategoryMiddle(String categoryMiddle) {
		this.categoryMiddle = categoryMiddle;
	}
	public String getCategoryHigh() {
		return categoryHigh;
	}
	public void setCategoryHigh(String categoryHigh) {
		this.categoryHigh = categoryHigh;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getUpCtCd() {
		return upCtCd;
	}
	public void setUpCtCd(String upCtCd) {
		this.upCtCd = upCtCd;
	}
	public String getCtLevel() {
		return ctLevel;
	}
	public void setCtLevel(String ctLevel) {
		this.ctLevel = ctLevel;
	}
	public String getCtName() {
		return ctName;
	}
	public void setCtName(String ctName) {
		this.ctName = ctName;
	}
	public String getDae() {
		return dae;
	}
	public void setDae(String dae) {
		this.dae = dae;
	}
	public String getJoong() {
		return joong;
	}
	public void setJoong(String joong) {
		this.joong = joong;
	}
	public String getSo() {
		return so;
	}
	public void setSo(String so) {
		this.so = so;
	}
	public String getGoodsCd() {
		return goodsCd;
	}
	public void setGoodsCd(String goodsCd) {
		this.goodsCd = goodsCd;
	}
	public String getCtCd() {
		return ctCd;
	}
	public void setCtCd(String ctCd) {
		this.ctCd = ctCd;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getNormalPrice() {
		return normalPrice;
	}
	public void setNormalPrice(String normalPrice) {
		this.normalPrice = normalPrice;
	}
	public String getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(String sellPrice) {
		this.sellPrice = sellPrice;
	}
	public String getIvQty() {
		return ivQty;
	}
	public void setIvQty(String ivQty) {
		this.ivQty = ivQty;
	}
	public String getGoodsStatus() {
		return goodsStatus;
	}
	public void setGoodsStatus(String goodsStatus) {
		this.goodsStatus = goodsStatus;
	}
	public String getSupplierCd() {
		return supplierCd;
	}
	public void setSupplierCd(String supplierCd) {
		this.supplierCd = supplierCd;
	}
	public String getThumnailUrl() {
		return thumnailUrl;
	}
	public void setThumnailUrl(String thumnailUrl) {
		this.thumnailUrl = thumnailUrl;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	
	
	
}
