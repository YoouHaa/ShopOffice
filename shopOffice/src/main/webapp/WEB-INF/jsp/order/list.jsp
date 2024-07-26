<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  
  <main id="main" class="main">

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body" style="padding-top: 20px;">
              <!-- General Form Elements -->
              <form id = searchform name = searchform>
              <table class="col-lg-12">
              	<tr>
              		<td>
		              	<div class="row mb-4">
		                  <label for="inputText" class="col-sm-1 col-form-label">회원명</label>
		                  <div class="col-sm-2">
		                    <input type="text" class="form-control" id="userName" name="userName">
		                  </div>
		                </div>
		           <td>
		           <td rowspan="2">
                        <div class="row mb-4">
                          <label for="inputText" class="col-sm-1 col-form-label">주문상태</label>
                          <div class="col-sm-2">
                            <select class="form-control" id="orderStatus" name="orderStatus">
                                <option value=''>주문상태</option>
                                <option value='결제완료'>결제완료</option>
                                <option value='배송준비중'>배송준비중</option>
                                <option value='배송중'>배송중</option>
                            </select>
                          </div>
                        </div>
                        <td rowspan="2">
                        <div class="row mb-4">
                          <label for="inputText" class="col-sm-1 col-form-label">결제수단</label>
                          <div class="col-sm-2">
                            <select class="form-control" id="payment" name="payment">
                                <option value=''>결제수단</option>
                                <option value='카드'>카드</option>
                                <option value='인터넷'>인터넷</option>
                                <option value='paypal'>paypal</option>
                            </select>
                          </div>
                        </div>
                        </td>
              		<td rowspan="2">
              			<button type="button" class="btn btn-info" onclick = 'search();'>조회</button>
              		</td>
              	</tr>
              	<tr>
              		<td>
              			<div class="row mb-3">
		                  <label for="inputDate" class="col-sm-1 col-form-label">주문일</label>
		                  <div class="col-sm-2">
		                    <input type="date" class="form-control"id="regDtFrom" name="regDtFrom">
		                  </div>
		                  ~
		                  <div class="col-sm-2">
		                    <input type="date" class="form-control"id="regTo" name="regTo">
		                  </div>
		                  
		                </div>
              		</td>
              	</tr>
              </table>
                <table>
                <tr>
                <td rowspan="2">
              			<button type="button" class="btn btn-info" onclick = 'delivery();'>일괄 배송중 처리</button>
              		</td>
              		<td rowspan="2">
              			<button type="button" class="btn btn-info" onclick = 'alldelivery();'>일괄 배송완료 처리</button>
              		</td>
                </table>
                
                
              </form>
              
            </div>
          </div>
           <div class="card">
            <div class="card-body">
              <!-- Table with hoverable rows -->
              <form id = selectform>
              <table class="table table-hover" id="OrderTable">
                <thead>
                  <tr>
                 <td> <input type="Checkbox" id="selectAllCheckbox"></td>
                    <th scope="col">No</th>
                    <th scope="col">주문번호</th>
                    <th scope="col">회원ID</th>
                    <th scope="col">회원명</th>
                    <th scope="col">상품명</th>
                    <th scope="col">주문금액</th>
                    <th scope="col">결제수단</th>
                    <th scope="col">주문상태</th>
                    <th scope="col">주문일</th>
                  </tr>
                </thead>
                <tbody>
                  
                    
                </tbody>
              </table>
              </form>
              <!-- End Table with hoverable rows -->
			  <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item"><a class="page-link" href="#">4</a></li>
                  <li class="page-item"><a class="page-link" href="#">5</a></li>
                  <li class="page-item"><a class="page-link" href="#">6</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav><!-- End Pagination with icons -->
			   	
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
  
   <div class="modal fade" id="orderup" tabindex="-1">
       <div class="modal-dialog modal-l modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">알림</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
             <table class="table table-hover"  border=1>
             <div class="modal-footer">
             <h3 class="modal-body">일괄 배송중으로 변경 하시겠습니까?</h3>
             <button type="button" class="btn btn-primary" onclick='orderUp();'>예</button>
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
             </div>
             </table>
             </div>
             </div>
             </div>
             </div>
             <div class="modal fade" id="order" tabindex="-1">
       <div class="modal-dialog modal-l modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">알림</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
             <table class="table table-hover"  border=1>
             <div class="modal-footer">
             <h3 class="modal-body">일괄 배송완료로 변경 하시겠습니까?</h3>
             <button type="button" class="btn btn-primary" onclick='order();'>예</button>
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
             </div>
             </table>
             </div>
             </div>
             </div>
             </div>
             <div class="modal fade" id="orderDetailList" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
           	<form id="modalform">
             <table class="table table-hover"  border=1 id = modalbody>
                  <tr>
    			<td>
      		  <button type="button" class="btn btn-primary" onclick="changeOrderStatus('결제완료');">결제완료</button>
   				 </td>
    			<td>
      		  <button type="button" class="btn btn-primary" onclick="changeOrderStatus('배송준비중');">배송준비중</button>
    			</td>
   			 <td>
       		 <button type="button" class="btn btn-primary" onclick="changeOrderStatus('배송중');">배송중</button>
   			 </td>
   			 <td>
        <button type="button" class="btn btn-primary" onclick="changeOrderStatus('배송완료');">배송완료</button>
   				 </td>
   			 <td>
        <button type="button" class="btn btn-primary" onclick="changeOrderStatus('주문취소');">주문취소</button>
    			</td>
                  <tr style="font-weight: bold;">
   				 <th scope="col">주문자정보</th>
				</tr>
                  <tr>
                    <td>주문번호</td>
                    <td id = "orderNO" name = "orderNo"></td>
                  </tr>
                  <tr>
                    <td>회원명</td>
                   <td id = "Name" name = "userName"></td>
                  </tr>
                  <tr>
                    <td>상품명</td>
                    <td id = "orderGoodsName" name = "orderGoodsName"></td>
                    </tr>
                    <tr>
                    <td>주문일</td>
                   <td id = "orderDt" name = "orderDt"></td>
                    </tr>
                    <tr>
                    <td>주문금액</td>
                    <td id = "orderPrice" name = "orderPrice"></td>
                    </tr>
                    <tr>
                    <td>주문상태</td>
                    <td id = "Status" name = "orderStatus"></td>
                    </tr>
                  	<tr>
                    <td>수취인</td>
                    <td id = "receiveName" name = "receiveName"></td>
                    </tr>
                    <tr>
                    <td>수취인 연락처</td>
                    <td id = "phone" name = "phone"></td>
                    </tr>
                    <tr>
                    <td>배송지주소</td>
                    <td id = "addr" name = "addr"></td>
                    </tr>
                    <tr>
                    <td>메모</td>
                    <td id = "memo" name = "memo"></td>
                    </tr>
                    
   				 </table>
   				  <table class="table table-hover" id="orderT">
   				  <tr style="font-weight: bold;">
   				 <th scope="col">상품정보</th>
   				 </tr>
   				 <tr>
   					 <th scope="col">No</th>
                    <th scope="col">카테고리</th>
                    <th scope="col">상품코드</th>
                    <th scope="col">상품명</th>
                    <th scope="col">구매단가</th>
                    <th scope="col">구매수량</th>
                    <th scope="col">재고수량</th>
				</tr>
				</table>
				<table class="table table-hover" id = pay>
                 <tr style="font-weight: bold;">
   				 <th scope="col">결제정보</th>
   				 </tr>
   				 <tr>
                    <td>결제유형</td>
                   <td id = "pay" name = "payment"></td>
                   </tr>
                </table>
                </form>
                
                </div>
                </div>
                </div>
                </div>
                
        
            <form id="hiddenform">
  				<input type='hidden' id="horderNo" name="orderNo">
  				<input type='hidden' id="corderStatus" name="orderStatus">
  			</form>
  
 
				<script>
				$(document).ready(function() {
				    $('#selectAllCheckbox').change(function() {
				        $('.orderCheckbox').prop('checked', this.checked);
				    });
				});
				function search(){
					call_server(searchform,'/orderList',orderlist);
				}
				
				function orderlist(list){
					$('#OrderTable > tbody').empty();
					for(var i=0;i<list.length;i++){
						str="<tr onclick=\"orderDetail('"+list[i].orderNo+"');\" style=\"cursor:pointer;\">";
						str+="<td><input type='checkbox' class='orderCheckbox' name = 'orderlist["+i+"]' value='"+list[i].orderNo+"'></td>";
						str+="<td>"+"NO"+"</td>";
						str+="<td>"+list[i].orderNo+"</td>";
						str+="<td>"+list[i].userId+"</td>";
						str+="<td>"+list[i].userName+"</td>";
						str+="<td>"+list[i].orderGoodsName+"</td>";
						str+="<td>"+list[i].orderPrice+"</td>";
						str+="<td>"+list[i].payment+"</td>"; 
						str+="<td>"+list[i].orderStatus+"</td>";
						str+="<td>"+list[i].regDt+"</td>";
						str+="</tr>";
						$('#OrderTable tbody').append(str);	
					}
				}
				
				function delivery(){
					$('#orderup').modal('show');
				}
				
				function orderUp(){
					call_server(selectform,'/updateorderStart',orderStart);
				}
				
				function orderStart(cnt){
					if(cnt>0){
						$('#orderup').modal('hide');
						search();
					}else{
						alert("수정실패");
					}
				}
				
				function alldelivery(){
					$('#order').modal('show');
				}
				function order(){
					call_server(selectform,'/updateorderDone',orderDone);
				}
				function orderDone(cnt){
					if(cnt>0){
						$('#order').modal('hide');
						search();
					}else{
						alert("수정실패");
					}
				}
				function orderDetail(orderNo){
					$('#horderNo').val(orderNo);
					call_server(hiddenform,'/DetailList',Detail);
				}
				
				function Detail(vo) {
				    
				    $('#orderNO').text(vo.orderNo);
				    $('#Name').text(vo.userName);
				    $('#orderGoodsName').text(vo.orderGoodsName);
				    $('#orderDt').text(vo.orderDt);
				    $('#orderPrice').text(vo.orderPrice);
				    $('#Status').text(vo.orderStatus);
				    $('#receiveName').text(vo.receiveName);
				    $('#phone').text(vo.phone);
				    $('#addr').text(vo.addr);
				    $('#memo').text(vo.memo);
				    $('#pay').text(vo.payment);
				    
				    for (var i = 0; i < vo.goodsD.length; i++) {
				        var str = "<tr>";
				        str += "<td>" + "NO" + "</td>";
				        str += "<td>" + vo.goodsD[i].ctName + "</td>";
				        str += "<td>" + vo.goodsD[i].goodsCd + "</td>";
				        str += "<td>" + vo.goodsD[i].goodsName + "</td>";
				        str += "<td>" + vo.goodsD[i].unitPrice + "</td>";
				        str += "<td>" + vo.goodsD[i].buyQty + "</td>";
				        str += "<td>" + vo.goodsD[i].ivQty + "</td>";
				        str += "</tr>";
				        $('#orderT > tbody').append(str);
				    }

				    $('#orderDetailList').modal('show');
				}
				function changeOrderStatus(status){
					$('#corderStatus').val(status);
					call_server(hiddenform,'/corderStatus',corder);
				}
				function corder(cnt){
					if(cnt>0){
						$('#orderDetailList').modal('hide');
						search();
					}else{
						alert("수정실패");
					}
				}
				
				</script>
				
				
				
				
				
		

