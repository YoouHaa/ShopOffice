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
                  <td style="width:200px;">
                      <label for="goodsName" class="col-sm-4 col-form-label">거래처명</label>
                  </td>
                  <td style="width:200px;">
                      <input type="text" class="form-control" id="supplierName" name="supplierName">
                  </td>
                  <td style="width:250px;">
                  
                      <label for="goodsStatus" class="col-sm-4 col-form-label" style="writing-mode: horizontal-tb;">거래처상태</label>
                   </td>
                   <td style="width:200px;">
                       <select class="form-control" id="supplierStatus" name="supplierStatus">
                         <option value='거래중'>거래중</option>
                         <option value='거래종료'>거래종료</option>
                       </select>
                  </td>
                  <td style="text-align: right;">
                    <button type="button" class="btn btn-primary" onclick='search();'>조회</button>
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
        <table class="table table-hover" id = supplierTable>
            <thead>
                  <tr>
                    <th scope="col">NO</th>
                    <th scope="col">거래처코드</th>
                    <th scope="col">거래처명</th>
                    <th scope="col">대표명</th>
                    <th scope="col">전화번호</th>
                    <th scope="col">담당자명</th>
                    <th scope="col">담당자연락처</th>
                    <th scope="col">담당자이메일</th>
                    <th scope="col">상태</th>
                    <th scope="col">등록일</th>
                  </tr>
                </thead>
            <tbody>
                <!-- 테이블 내용 -->
            </tbody>
        </table>
    </div>
   </div>
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
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
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
                  <tr>
                    <th scope="col">거래처코드</th>
                    <td colspan="3"><input type='text' id = "Cd" name = "supplierCd">(거래처코드는 수정이 불가합니다.)</td>
                  </tr>
                  <tr>
                    <th scope="col">거래처명</th>
                    <td colspan="3"><input type='text' id = "Name" name = "supplierName"></td>
                  </tr>
                  <tr>
                    <th scope="col">대표명</th>
                    <td ><input type='text' id = "supplierCeo" name = "supplierCeo"></td>
                    </tr>
                    <tr>
                    <th scope="col">전화번호</th>
                    <td colspan="2">
                    <input type='text' id = "phone1" name = "phone1">
                    <input type='text' id = "phone2" name = "phone2">
                    <input type='text' id = "phone3" name = "phone3">
                    </td>
                    </tr>
                  <tr>
                    <th scope="col">담당자명</th>    
                    <td ><input type='text' id = "opName" name = "opName">
                    </td>
                    </tr>
                    <tr>
                    <th scope="col">담당자연락처</th>    
                    <td ><input type='text' id = "opPhone1" name = "opPhone1">
                    <input type='text' id = "opPhone2" name = "opPhone2">
                    <input type='text' id = "opPhone3" name = "opPhone3">
                    </td>
                    </tr>
                    <tr>
                    <th scope="col">담당자이메일</th>    
                    <td ><input type='text' id = "opEmail1" name = "opEmail1">
                   		@<input type='text' id = "opEmail2" name = "opEmail2">
                    <select id="opEmail" name ="opEmail2">
	                    <option value="">직접입력</option>
	                    <option value="">naver.com</option>
	                    <option value="">gmail.com</option>
	                    </select>
                    </td>
                    </tr>
                  <tr>
                    <th scope="col">거래상태</th>
                    <td>
	                    <select id="status" name ="supplierStatus">
	                    <option value="거래중">거래중</option>
	                    <option value="거래종료">거래종료</option>
	                    </select>
	                    
                    </td>
                    
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
             

<script>
	function search(){
		call_server(searchform,'/supplierList',supplierlist);
	}
	function supplierlist(list){
		$('#supplierTable > tbody').empty();
		for(var i=0;i<list.length;i++){
			str="<tr onclick=\"supplierDetail('"+list[i].supplierCd+"');\" style=\"cursor:pointer;\">";
			str+="<td>"+"NO"+"</td>";
			str+="<td>"+list[i].supplierCd+"</td>";
			str+="<td>"+list[i].supplierName+"</td>";
			str+="<td>"+list[i].supplierCeo+"</td>";
			str+="<td>"+list[i].phone+"</td>";
			str+="<td>"+list[i].opName+"</td>";
			str+="<td>"+list[i].opPhone+"</td>"; 
			str+="<td>"+list[i].opEmail+"</td>";
			str+="<td>"+list[i].supplierStatus+"</td>";
			str+="<td>"+list[i].regDt+"</td>";
			str+="</tr>";
			$('#supplierTable tbody').append(str);	
		}
	}
	
	function supplierDetail(cd){
		$('#Cd').val(cd);
		$('#iuType').val('U');
		call_server(supplierform,'/supplierDetail',setSupplierDetail);
		
	}
	function setSupplierDetail(vo){
		console.log("==================");
		console.log(vo);
		$('#Cd').val(vo.supplierCd);
		$('#Name').val(vo.supplierName);
		$('#supplierCeo').val(vo.supplierCeo);
		
		var phone = vo.phone.split('-');
		$('#phone1').val(phone[0]);
		$('#phone2').val(phone[1]);
		$('#phone3').val(phone[2]);
		
		$('#opName').val(vo.opName);
		
		var opPhone = vo.opPhone.split('-');
		$('#opPhone1').val(opPhone[0]);
		$('#opPhone2').val(opPhone[1]);
		$('#opPhone3').val(opPhone[2]);
		
		var opEmail = vo.opEmail.split('@');
		$('#opEmail1').val(opEmail[0]);
		$('#opEmail2').val(opEmail[1]);
		$('#status').val(vo.supplierStatus);
		
		$('#SupplierInfo').modal('show');
	}
	
	function uplode(){
		$('#supplierupdate').modal('show');
	}
	function goodsUp(){
		//$('#phone').val($('#phone1').val()+'-'+$('#phone2').val()+'-'+$('#phone3').val());
		call_server(supplierform,'/supplierupad',madesupplier);
	}
	function madesupplier(cnt){
		if(cnt>0){
			$('#SupplierInfo').modal('hide');
			$('#supplierupdate').modal('hide');
			search();
		}else{
			alert("수정실패");
		}
	}
	
	
	function newup(){ //등록
		$('#iuType').val('I');
		$('#SupplierInfo').modal('show');
	}
	
	
	</script>
