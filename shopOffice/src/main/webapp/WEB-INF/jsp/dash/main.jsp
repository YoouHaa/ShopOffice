<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  
  <main id="main" class="main">
  
     <table>
     <tr>
     <td>
     <table class="table table-hover" id="userT">
   				 <tr style="font-weight: bold;">
   				   <th scope="col">회원</th>
   				 </tr>
   				 </table>
     </td>
     <td>
     <table class="table table-hover" id="goodsT">
   				 <tr style="font-weight: bold;">
   				   <th scope="col">판매상품</th>
   				 </tr>
   				 </table>
     </td>
     <td>
     <table class="table table-hover" id="supplierT">
   				 <tr style="font-weight: bold;">
   				   <th scope="col">거래처</th>
   				 </tr>
   				 </table>
     </td>
     <td>
     <table class="table table-hover" id="orderT">
   				 <tr style="font-weight: bold;">
   				   <th scope="col">금일주문</th>
   				 </tr>
   				 </table>
     </td>
     </tr>
     </table>
<table>
     <tr>
     <td>
     <table class="table table-hover" id="status1">
   				 <tr style="font-weight: bold;">
   				   <th scope="col">결재완료</th>
   				 </tr>
   				 </table>
     </td>
     <td>
     <table class="table table-hover" id="status2">
   				 <tr style="font-weight: bold;">
   				   <th scope="col">배송준비중</th>
   				 </tr>
   				 </table>
     </td>
     <td>
     <table class="table table-hover" id="status3">
   				 <tr style="font-weight: bold;">
   				   <th scope="col">배송중</th>
   				 </tr>
   				 </table>
     </td>
     <td>
     <table class="table table-hover" id="status4">
   				 <tr style="font-weight: bold;">
   				   <th scope="col">배송완료</th>
   				 </tr>
   				 </table>
     </td>
     </tr>
     </table>
        
    <section class="section">
      <div class="row">
        <div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">월간 매출현황</h5>

              <!-- Line Chart -->
              <canvas id="lineChart" style="max-height: 400px;"></canvas>
              <script>
                //한달 더하기.
                //
                //.
                //month = ['4/3','4/4'....'5/2'];
                              </script>
                </div>
          </div>
        </div>
         <div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">월간 주문현황</h5>
             <canvas id="barChart" style="max-height: 400px;"></canvas>
              <script>
                
              </script>
                  </div>
          </div>
        </div>
              </div>
              <form id = "selectform">
  <input type='hidden' id='currentPage' name='currentPage' value='1'>
  <table>
  	<tr>
  		<td>
  			<table class="table table-hover" id="Worder">
  			
   				 <thead>주간 주문정보
   				 <tr>
   					 <th scope="col">No</th>
                    <th scope="col">주문번호</th>
                    <th scope="col">회원ID</th>
                    <th scope="col">회원명</th>
                    <th scope="col">상품명</th>
                    <th scope="col">금액</th>
                    <th scope="col">상태</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                    </table>
                    </td>
                    <td>
			  			 <table class="table table-hover" id="Wcome">
			  			 <thead>주간 입고정보
			   				 <tr>
			   					 <th scope="col">No</th>
			                    <th scope="col">주문번호</th>
			                    <th scope="col">거래처명</th>
			                    <th scope="col">상품명</th>
			                    <th scope="col">금액</th>
			                    <th scope="col">상태</th>
							</tr>
							</thead>
							<tbody>
							
							</tbody>
							</table>
							<nav aria-label="Page navigation example">
					                <ul class="pagination" id = "WcomePaging">
					                 
					                </ul>
					        </nav><!-- End Pagination with icons -->
							</td>
							</tr>
			  				</table>
					  		
   				  </form>
			  
    </section>
  </main>
  
  
            <form id="hiddenform">
  	<input type='hidden' id='userId' name='userId'>
  	<input type='hidden' id='goodsCd' name='goodsCd'>
  	<input type='hidden' id='supplierCd' name='supplierCd'>
  	<input type='hidden' id='orderNo' name='orderNo'>
  </form>
  
 <script src="/assets/js/paging.js"></script> 
 
<script>
call_server(hiddenform,'/getDashAllList',getAllListappend);	

function getAllListappend(vo){
	console.log(vo);
	$('#userT').append(vo.userCnt);
	$('#goodsT').append(vo.goodsCnt);
	$('#supplierT').append(vo.supplierCnt);
	$('#orderT').append(vo.orderCnt);
	var st1 = 0;
	var st2 = 0;
	var st3 = 0;
	var st4 = 0;
	for(i=0; i<vo.status.length; i++){
	if(vo.status[i].orderStatus == "결재완료"){
		st1++;
	}else if(vo.status[i].orderStatus == "배송준비중"){
		st2++;
	}else if(vo.status[i].orderStatus == "배송중"){
		st3++;
	}else{
		st4++;
	}
	}
	$('#status1').append(st1);
	$('#status2').append(st2);
	$('#status3').append(st3);
	$('#status4').append(st4);
	setLineChart(vo.mon);
	setBarChart(vo.od);
}
call_server(selectform,'/getWorderList',Worderlist);

function Worderlist(list){
	$('#Worder > tbody').empty();
	for(var i=0;i<list.length;i++){
		str="<tr>";
		str+="<td>"+(i+1)+"</td>";
		str+="<td>"+list[i].orderNo+"</td>";
		str+="<td>"+list[i].userId+"</td>";
		str+="<td>"+list[i].userName+"</td>";
		str+="<td>"+list[i].orderGoodsName+"</td>";
		str+="<td>"+list[i].orderPrice+"</td>";
		str+="<td>"+list[i].orderStatus+"</td>";
		str+="</tr>";
		$('#Worder tbody').append(str);	
	}
}
call_server(selectform,'/getWcomeList',Wcomelist);

function Wcomelist(vo){
	console.log(vo);
	list = vo.list;
	$('#Wcome > tbody').empty();
	for(var i=0;i<list.length;i++){
		str="<tr>";
		str+="<th scope=\"row\">"+((Number(vo.currentPage)-1)*vo.countPerPage+(i+1))+"</th>";
		str+="<td>"+list[i].orderNo+"</td>";
		str+="<td>"+list[i].supplierName+"</td>";
		str+="<td>"+list[i].goodsName+"</td>";
		str+="<td>"+list[i].orderPrice+"</td>";
		str+="<td>"+list[i].orderStatus+"</td>";
		str+="</tr>";
		$('#Wcome tbody').append(str);	
	}
	setPaging(WcomePaging, vo.startPage, vo.endPage, 'pagingg');
}
function pagingg(no){
	$('#currentPage').val(no);
	call_server(selectform,'/getWcomeList',Wcomelist);
}		
		
				
function setBarChart(list){
	
	var labelsArr=[];
	
		var month = [];
	      var orderArr=[];
	       for(var i=0;i<list.length;i++){
	    	   month[i]=list[i].orderDate;
	    	   orderArr[i]=list[i].orderNo;
	       }
	       
	       console.log(month);
	       
        new Chart(document.querySelector('#barChart'), {
          type: 'bar',
          data: {
            labels: month,
            datasets: [{
              label: 'Bar Chart',
              data: orderArr,
              backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(255, 205, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(201, 203, 207, 0.2)'
              ],
              borderColor: [
                'rgb(255, 99, 132)',
                'rgb(255, 159, 64)',
                'rgb(255, 205, 86)',
                'rgb(75, 192, 192)',
                'rgb(54, 162, 235)',
                'rgb(153, 102, 255)',
                'rgb(201, 203, 207)'
              ],
              borderWidth: 1
            }]
          },
          options: {
            scales: {
              y: {
                beginAtZero: true
              }
            }
          }
        });
    
	
}				
				
function setLineChart(list){
		
 	  var month = [];
      var dataArr=[];
       for(var i=0;i<list.length;i++){
    	   month[i]=list[i].orderDate;
    	   dataArr[i]=list[i].totalPrice;
       }
    	  
      new Chart(document.querySelector('#lineChart'), {
        type: 'line',
        data: {
          labels: month,
          datasets: [{
            label: 'Line Chart',
            data: dataArr,
            fill: false,
            borderColor: 'rgb(75, 192, 192)',
            tension: 0.1
          }]
        },
        options: {
          scales: {
            y: {
              beginAtZero: true
            }
          }
        }
      });
    

}				
				
</script>
				
				
				
				
				
		

