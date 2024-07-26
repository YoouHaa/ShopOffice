<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<main id="main" class="main">

  <section class="section">
    <div class="row">
      <div class="col-lg-12">

        <div class="card">
          <div class="card-body" style="padding-top: 20px;">
            <!-- General Form Elements -->
            <form id="searchform" name="searchform">
            <input type = "hidden" id = "">
              <table class="col-lg-12">
                <tr>
                  <td style="width:200px;">
                      <label for="goodsName" class="col-sm-4 col-form-label">거래처명</label>
                  </td>
                  <td style="width:200px;">
                      <input type="text" class="form-control" id="supplierName" name="supplierName">
                 </td><td>
              			<div class="row mb-3">
		                  <label for="inputDate" class="col-sm-1 col-form-label">발주일</label>
		                  <div class="col-sm-2">
		                    <input type="date" class="form-control" id="incomeDtFrom" name="incomeDtFrom">
		                  </div>
		                  <div class="col-sm-2">
		                    <input type="date" class="form-control" id="incomeDtTo" name="incomeDtTo">
		                  </div>
		                </div>
		                </td>
                  <td style="text-align: right;">
                    <button type="button" class="btn btn-primary" onclick='Sosearch();'>조회</button>
                  </td>
                  <td>
                    <button type="button" class="btn btn-primary" onclick='newup();'>신규</button>
                  </td>
                  </tr>
                    </table>
                 </form>
          </div>
        </div> <!-- card 닫기 -->
      </div> <!-- col-lg-12 닫기 -->
    </div> <!-- row 닫기 -->
  </section> <!-- section 닫기 -->
    <div class="row">
    <div class="col-lg-12">
        <table class="table table-hover" id = SorderTable>
            <thead>
                  <tr>
                    <th scope="col">NO</th>
                    <th scope="col">거래처코드</th>
                    <th scope="col">거래처명</th>
                    <th scope="col">발주번호</th>
                    <th scope="col">발주일</th>
                    <th scope="col">상품코드</th>
                    <th scope="col">상품명</th>
                    <th scope="col">발주수량</th>
                    <th scope="col">입고단가</th>
                    <th scope="col">상태</th>
                    <th scope="col">입고일</th>
                  </tr>
                </thead>
            <tbody>
                <!-- 테이블 내용 -->
            </tbody>
        </table>
    </div>
   </div>
   <nav aria-label="Page navigation example">
                <ul class="pagination" id = "SorderPage">
                  
                </ul>
              </nav><!-- End Pagination with icons -->
</main> <!-- main 닫기 -->
  
<div class="modal fade" id="SupplierInfo" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">상품발주</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
           	<form id="supplierform">
           	<input type='hidden' id='iuType' name='iuType'>
           	
             <table class="table table-hover"  border=1>
                    
                  <tr>
                    <th scope="col">거래처</th>
                    <td>
                   <select id="spName" name ="supplierCd">
	                    <option value="">선택</option>
	                    </select>
	                    </td>
                  </tr>
                  <tr>
                    <th scope="col">대표자명</th>
                    <td><input type='text' id = "supplierCeo" name = "supplierCeo"></td>
                    <th scope="col">전화번호</th>
                    <td ><input type='text' id = "phone" name = "phone"></td>
                    </tr>
                    <tr>
                    <th scope="col">담당자명</th>
                    <td>
                    <input type='text' id = "opName" name = "opName">
                    </td>
                    <th scope="col">연락처</th>    
                    <td ><input type='text' id = "opPhone" name = "opPhone">
                    </td>
                    </tr>
                    <tr>
                    <th scope="col">이메일</th>    
                    <td ><input type='text' id = "opEmail" name = "opEmail">
                    </td>
                    <th scope="col">상태</th>    
                    <td ><input type='text' id = "supplierStatus" name = "supplierStatus">
                    </td>
                    </tr>
                </table>
                <table class="table table-hover" id="orderG">
   				  <tr style="font-weight: bold;">
   				 <th scope="col">주문상품</th>
   				 <td>
   				  <button type="button" onclick='addButton();'>+</button>
   				 </td>
   				 </tr>
   				 <tr>
   					<th scope="col">상품코드</th>
                    <th scope="col">상품명</th>
                    <th scope="col">단가</th>
                    <th scope="col">수량</th>
                    <th scope="col">삭제</th>
				</tr>
				</table>
                </form>
                <div class="modal-footer">
             <button type="button" class="btn btn-primary" onclick='uplode();'>발주</button>
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
           </div>
                </div>
                </div>
                </div>
                </div>
                
                	<form id =hiddenform>
                	<input type='hidden' id='supCd' name='supplierCd'>
                	<input type='hidden' id='goCd' name='goodsCd'>
                  </form>
      <div class="modal fade" id="supplierupdate" tabindex="-1">
       <div class="modal-dialog modal-l modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">알림</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
             <table class="table table-hover"  border=1>
             <div class="modal-footer">
             <h3 class="modal-body">거래처정보를 저장하시겠습니까?</h3>
             <button type="button" class="btn btn-primary" onclick='goodsUp();'>예</button>
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
             </div>
             </table>
             </div>
             </div>
             </div>
             </div>
             
<script src="/assets/js/paging.js"></script> 

<script>
	function Sosearch(){
		call_server(searchform,'/getSorderList',getSList);
	}
	
		function getSList(vo){
			list = vo.list;
			$('#SorderTable > tbody').empty();
			var noOrder=[];
			var orderNo = "";
			for(var i=0;i<list.length;i++){
				if(orderNo!=list[i].orderNo){
					noOrder.push(list[i].orderNo);
					orderNo = list[i].orderNo;
				}
			}
			console.log(noOrder);
			for(var i=0;i<noOrder.length;i++){
				showList(vo, noOrder[i]);
			}
			
			setPaging(SorderPage, vo.startPage, vo.endPage, 'Sosearch');
			
		}
			
		
		function showList(vo, orderNo){
			
			list = vo.list;
			var c = 0;
			var rowspan=0;
			for(var i=0;i<list.length;i++){
				if(list[i].orderNo==orderNo){
					rowspan++;
				}
			}
			
			for(var i=0;i<list.length;i++){
				
				str="";
				if(list[i].orderNo==orderNo && c==0){
					str="<tr onclick=\"SorderDetail('"+list[i].orderNo+"');\" style=\"cursor:pointer;\">";
					str+="<th rowspan='"+ rowspan +"' scope=\"row\">"+((Number(vo.currentPage)-1)*vo.countPerPage+(i+1))+"</th>";
					str+="<td rowspan='"+ rowspan +"'>"+list[i].supplierCd+"</td>";
					str+="<td rowspan='"+ rowspan +"'>"+list[i].supplierName+"</td>";
					str+="<td rowspan='"+ rowspan +"'>"+list[i].orderNo+"</td>";
					str+="<td rowspan='"+ rowspan +"'>"+list[i].regDt+"</td>";
					
					str+="<td>"+list[i].goodsCd+"</td>";
					str+="<td>"+list[i].goodsName+"</td>"; 
					str+="<td>"+list[i].buyQty+"</td>";
					str+="<td>"+list[i].unitPrice+"</td>";
					str+="<td>"+list[i].orderStatus+"</td>";
					str+="<td>"+list[i].regDt+"</td>";
					str+="</tr>";
					c++;
				}else if(list[i].orderNo==orderNo){
					str="<tr onclick=\"SorderDetail('"+list[i].orderNo+"');\" style=\"cursor:pointer;\">";
					str+="<td>"+list[i].goodsCd+"</td>";
					str+="<td>"+list[i].goodsName+"</td>"; 
					str+="<td>"+list[i].buyQty+"</td>";
					str+="<td>"+list[i].unitPrice+"</td>";
					str+="<td>"+list[i].orderStatus+"</td>";
					str+="<td>"+list[i].regDt+"</td>";
					str+="</tr>";
				}
			
				$('#SorderTable tbody').append(str);
			}
		
		}


		function newup(){
			call_server(supplierform,'/getSupplierList',getSupplier);
		}
		function getSupplier(list){
			for(var i=0;i<list.length;i++){
				str="<option value='"+list[i].supplierCd+"'>"+list[i].supplierName+"</option>";
				$('#spName').append(str);
				$('#SupplierInfo').modal('show');
			}
		}
		$('#spName').on('change', function() {
			$('#supCd').val($(this).val());
			call_server(hiddenform,'/getSupplierInfo',getSupplierInfo);
		});
		
		function getSupplierInfo(rvo){
			$('#supplierCeo').val(rvo.supplierCeo);
			$('#phone').val(rvo.phone);
			$('#opPhone').val(rvo.opPhone);
			$('#opName').val(rvo.opName);
			$('#opEmail').val(rvo.opEmail);
			$('#supplierStatus').val(rvo.supplierStatus);
		}
		function addButton(){
			//alert($('#supCd').val());
			call_server(hiddenform,'/getGoodsDetail',SorderDetail);
		}
		
		
		var goodsrn = 0;
		var goodslist;
		function SorderDetail(list){
			goodslist=list;
			str="<tr>"
			str+="<td>";
			str+="    <select id=\"gCd\" name =\"goodslist["+goodsrn+"].goodsCd\" onchange='getGoodsName(this, "+goodsrn+")'>";
			str+="    <option value=''>선택하세요.</option>";
			for(var i=0;i<list.length;i++){
				str+="<option value='"+list[i].goodsCd+"'>"+list[i].goodsCd+"</option>";
			}
			str+="    </select>";
			str+="</td>";
			str+="<td id=\"gName"+goodsrn+"\"></td>";
			str+="<td><input type='text' name='goodslist["+goodsrn+"].unitPrice'></td>";
			str+="<td><input type='text' name='goodslist["+goodsrn+"].buyQty'></td>";
			str+="<td><button type='button' onclick = 'delButton(this);'>삭제</button></td>";
			str+="</tr>"
			$('#orderG').append(str);
			goodsrn++;
			$('#SupplierInfo').modal('show');
		}
		
		function getGoodsName(obj, rn){
			for( var i=0;i<goodslist.length;i++){
				if(goodslist[i].goodsCd == $(obj).val()){
					$('#gName'+rn).text(goodslist[i].goodsName);
				}
			}
				
		}
		function delButton(obj){
			 $(obj).closest('tr').remove();
		}
		function uplode(){
			call_server(supplierform,'/saveGoodsOrder',saveGoodsSupplier);
		}
		function saveGoodsSupplier(cnt){
			if(cnt>0){
				$('#SupplierInfo').modal('hide');
				Sosearch();
			}else{
				alert("수정실패");
			}
		}
		
		
		
		
	
	</script>
