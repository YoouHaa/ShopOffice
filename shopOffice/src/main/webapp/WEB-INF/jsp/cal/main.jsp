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
              <table class="col-lg-12">
                <tr>
              		<td>
              			<div class="row mb-3">
		                  <label for="inputDate" class="col-sm-1 col-form-label">정산일</label>
		                  <div class="col-sm-2">
		                    <input type="date" class="form-control"id="orderDtFrom" name="orderDtFrom">
		                  </div>
		                  ~
		                  <div class="col-sm-2">
		                    <input type="date" class="form-control"id="orderDtTo" name="orderDtTo">
		                  </div>
                  <td style="text-align: right;">
                    <button type="button" class="btn btn-primary" onclick='calSearch();'>조회</button>
                  </td>
		                </div>
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
        <table class="table table-hover" id = priceTable>
            <thead>
                  <tr>
                    <th scope="col">NO</th>
                    <th scope="col">일자</th>
                    <th scope="col">주문금액</th>
                    <th scope="col">판매수량</th>
                  </tr>
                </thead>
            <tbody>
                <!-- 테이블 내용 -->
            </tbody>
        </table>
    </div>
   </div>
   <nav aria-label="Page navigation example">
                <ul class="pagination" id = "CalPaging">
                  
                </ul>
              </nav><!-- End Pagination with icons -->
</main> <!-- main 닫기 -->
  
<div class="modal fade" id="SupplierInfo" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">거래처등록/수정</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
           	<form id="supplierform">
           	<input type='text' id='iuType' name='iuType'>
           	<input type='text' id='phone' name='phone'>
           	
             <table class="table table-hover"  border=1>
                  
                    
                </table>
                </form>
                <div class="modal-footer">
             <button type="button" class="btn btn-primary" onclick='uplode();'>저장</button>
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
           </div>
                </div>
                </div>
                </div>
                </div>
                
                	<form id =hiddenform>
                	
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
	function calSearch(){
		call_server(searchform,'/getScheduleList',wPriceList);
	}
	function wPriceList(vo){
		list = vo.list;
		console.log(list)
		$('#priceTable > tbody').empty();
		for(var i=0;i<list.length;i++){
			str="<tr>";
			str+="<th scope=\"row\">"+((Number(vo.currentPage)-1)*vo.countPerPage+(i+1))+"</th>";
			str+="<td>"+list[i].orderDt+"</td>"; 
			str+="<td>"+list[i].orderPrice+"</td>";
			str+="<td>"+list[i].buyQty+"</td>";
			str+="</tr>";
			$('#priceTable tbody').append(str);	
		}
		setPaging(CalPaging, vo.startPage, vo.endPage, 'goodsSearch');
	}
	
	</script>
