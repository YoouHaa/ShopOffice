package com.shop.goods.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.commom.service.FileService;
import com.shop.goods.service.GoodsService;
import com.shop.goods.vo.GoodsVO;
import com.shop.table.vo.CategoryInfoVO;
import com.shop.table.vo.FileVO;
import com.shop.table.vo.GoodsImgVO;
import com.shop.table.vo.GoodsInfoVO;
@Controller
public class GoodsController {
	
	@Autowired
	GoodsService service;
	@Autowired
	FileService fileservice;
	
	@RequestMapping("/goods/main")
	public String main() throws Exception {
		return "goods/main";
	}
	@RequestMapping("/littlecate")
	@ResponseBody
	public ArrayList<GoodsInfoVO> littlecate(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception{
		if(vo.getCtLevel()==null || vo.getCtLevel().equals("")) {
			vo.setCtLevel("1");
		}
		ArrayList<GoodsInfoVO> list = service.selectlittlecate(vo);
		return list;
		
	}
	@RequestMapping("/supplierName")
	@ResponseBody
	public ArrayList<GoodsInfoVO> supplierName(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception{
		
		ArrayList<GoodsInfoVO> list = service.selectsupplierName(vo);
		return list;
		
	}
	@RequestMapping("/goodsList")
	@ResponseBody
	public GoodsVO goodsList(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception{
		ArrayList<GoodsInfoVO> list = service.selectgoodsList(vo);
		int totalPage = service.selectTotalGoodsCount(vo);
		GoodsVO goodsvo = new GoodsVO();
		goodsvo.setList(list);
		goodsvo.setTotal(totalPage); //총 데이터수.
		goodsvo.setStartPage(vo.getStartPage()); 
		goodsvo.setCurrentPage(vo.getCurrentPage());
		return goodsvo;
	}
	@RequestMapping("/goodsDetail")
	@ResponseBody
	public GoodsInfoVO goodsDetail(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception{
 		GoodsInfoVO goodsvo = service.selectgoodsDetail(vo);
		
		//소분류
 		List<CategoryInfoVO> categorydae = service.selectgoodhCategoryList(goodsvo);
		//중분류
		List<CategoryInfoVO> categoryjung = service.selectgoodmCategoryList(goodsvo);
		//대분류
		List<CategoryInfoVO> categoryso = service.selectgoodsCategoryList(goodsvo);
		
		goodsvo.setCategoryjung(categoryjung);
		goodsvo.setCategoryso(categoryso);
		goodsvo.setCategorydae(categorydae);
		return goodsvo;
	}
	@RequestMapping("/goodsUpdate")
	@ResponseBody
	public int goodsUpdate(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception{
		int cnt = 0;
		int c = 0;
		int cb = 0;
		FileVO filevo = new FileVO();
		if(vo.getThumnailFile()!=null) { //이미지에 값이 있을때
			filevo.setFile(vo.getThumnailFile()); // filevo에있는 리스트로 옮김
			filevo = fileservice.createFile(filevo); // 파일의 이름바꿔주기
			vo.setThumnailUrl(filevo.getFilePath()); // 썸네일의 이름바꿔주기
		}
		
		if(vo.getImgFileList()!=null && vo.getImgFileList().size()>0) {
			c = service.delgoodsimg(vo); //이미지에 값이있을때 전부 삭제
			
			GoodsImgVO imgvo = new GoodsImgVO();
			imgvo.setGoodsCd(vo.getGoodsCd()); // goodsCd값을 가져옴
			for(int i=0;i<vo.getImgFileList().size();i++) { // 이미지를 리스트형식으로 셀렉트함
				if(vo.getImgFileList().get(i)!=null) { // 이미지의 값이 있을때
					filevo.setFile(vo.getImgFileList().get(i));// 인덱스번호대로 리스트에 가져옴
					filevo = fileservice.createFile(filevo); // 리스트에 들어온값들의 이름변환 해서저장
					imgvo.setImgUrl(filevo.getFilePath()); // imgUrl을 데이터베이스에 이름변경후 저장
					imgvo.setFileName(filevo.getOrgFileNm()); // 파일명을 원본파일이름으로 저장
					cb= service.selectinsertgoods(imgvo); //굿즈이미지 테이블에 인서트
				}
			}
		}
		
		if(vo.getIuType().equals("U")) {		//수정
			cnt = service.updategoodsUpdate(vo);
		}else if(vo.getIuType().equals("I")) {	//등록
			cnt = service.newGoodsAdd(vo);
		}
		 
		return cnt;
	}
	
	
	

}
