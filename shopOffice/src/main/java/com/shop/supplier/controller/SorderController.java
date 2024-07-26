package com.shop.supplier.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.supplier.service.SorderService;
import com.shop.supplier.vo.SupplierVO;
import com.shop.table.vo.GoodsInfoVO;
import com.shop.table.vo.SorderInfoVO;
import com.shop.table.vo.SupplierInfoVO;
@Controller
public class SorderController {
	
	@Autowired
	SorderService service;
	
	@RequestMapping("/supplier/order")
	public String order() throws Exception {
		return "supplier/order";
}
	@RequestMapping("/getSorderList")
	@ResponseBody
	public SupplierVO getSorderList(@ModelAttribute("SorderInfoVO") SorderInfoVO vo) throws Exception{
		List<SorderInfoVO> list = service.selectSorderList(vo);
		int totalPage = service.selectTotalSorderCount(vo); 
		SupplierVO suppliervo = new SupplierVO();
		suppliervo.setList(list);
		suppliervo.setTotal(totalPage); //총 데이터수.
		suppliervo.setStartPage(vo.getStartPage()); 
		suppliervo.setCurrentPage(vo.getCurrentPage());//
		return suppliervo;
	}
	@RequestMapping("/getSupplierList")
	@ResponseBody
	public List<SupplierInfoVO> getSupplierList(@ModelAttribute("SupplierInfoVO") SupplierInfoVO vo) throws Exception{
		List<SupplierInfoVO> list = service.selectSupplierList(vo);
		return list;
	}
	@RequestMapping("/getSupplierInfo")
	@ResponseBody
	public SupplierInfoVO getSupplierInfo(@ModelAttribute("SupplierInfoVO") SupplierInfoVO vo) throws Exception{
		SupplierInfoVO rvo = service.getSupplierInfo(vo);
		return rvo;
	}
	@RequestMapping("/getGoodsDetail")
	@ResponseBody
	public List<GoodsInfoVO> getGoodsDetail(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception{
 		//GoodsInfoVO rvo = service.selectgetGoodsDetail(vo);
		
 		List<GoodsInfoVO> sGoodsCd = service.selectgoodsCd(vo);
 		
 		//rvo.setsGoodsCd(sGoodsCd);
		return sGoodsCd;
	}
	
	@RequestMapping("/saveGoodsOrder")
	@ResponseBody
	public int saveGoodsOrder(@ModelAttribute("SorderInfoVO") SorderInfoVO vo) throws Exception{
		String orderNo = service.selectMaxSupplierOrder();
		
		vo.setOrderNo(orderNo);
		int sumPrice = 0;
		for(int i=0;i<vo.getGoodslist().size();i++) {
			sumPrice += Integer.parseInt(vo.getGoodslist().get(i).getBuyQty()) * Integer.parseInt(vo.getGoodslist().get(i).getUnitPrice());
		}
		vo.setOrderPrice(""+sumPrice);
		
		int cnt = service.insertSupplierOrder(vo);
		
		int saveGoodsOrder = service.insertGoodsOrder(vo);
		
		//1.  orderno 를 max+1값을 만든다.
		//2. vo.setOrderNo (orderno);
		//3. supplier order 테이블 insert.
		//4. supplier goods insert .
		//    2. insert query에서 한번에 insert 해주느냐.
		   
		return cnt;
		
	}
}