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
                      <label for="goodsName" class="col-sm-4 col-form-label">관리자명</label>
                  </td>
                  <td style="width:200px;">
                      <input type="text" class="form-control" id="manageName" name="manageName">
                  </td>
                  <td style="width:250px;">
                  
                      <label for="goodsStatus" class="col-sm-4 col-form-label" style="writing-mode: horizontal-tb;">퇴사여부</label>
                   </td>
                   <td style="width:200px;">
                       <select class="form-control" id="leaveYn" name="leaveYn">
                         <option value=''>선택</option>
                         <option value='Y'>Y</option>
                         <option value='N'>N</option>
                       </select>
                  </td>
                  <td style="text-align: right;">
                    <button type="button" class="btn btn-primary" onclick='Msearch();'>조회</button>
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
        <table class="table table-hover" id = manageTable>
            <thead>
                  <tr>
                    <th scope="col">NO</th>
                    <th scope="col">관리자ID</th>
                    <th scope="col">관리자명</th>
                    <th scope="col">이메일</th>
                    <th scope="col">연락처</th>
                    <th scope="col">등록일</th>
                    <th scope="col">퇴사여부</th>
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
                  
                </ul>
              </nav><!-- End Pagination with icons -->
</main> <!-- main 닫기 -->
  
<div class="modal fade" id="ManageInfo" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">관리자등록/수정</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
           	<form id="manageform">
           	<input type='text' id='iuType' name='iuType'>
           	
             <table class="table table-hover"  border=1>
                  <tr>
                    <th scope="col">관리자ID</th>
                    <td><input type='text' id = "MaId" name = "manageId"></td>
                    <th scope="col">관리자명</th>
                    <td><input type='text' id = "Name" name = "manageName"></td>
                  </tr>
                  <tr>
                    <th scope="col">비밀번호</th>
                    <td ><input type='password' id = "Pwd" name = "managePwd"></td>
                    <th scope="col">비밀번호확인</th>
                    <td>
                    <input type='password' id = "chkPwd">
                    </td>
                    </tr>
                  <tr>
                    <th scope="col">이메일</th>    
                    <td ><input type='text' id = "email" name = "email">
                    </td>
                    </tr>
                   <tr>
                    <th scope="col">퇴사여부</th>    <td>
                    <select id="leave" name ="leaveYn">
	                    <option value="">선택</option>
	                    <option value="Y">Y</option>
	                    <option value="N">N</option>
	                    </select></td>
                    </tr>
                    
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
                	<input type='hidden' id='MId' name='manageId'>
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
	function Msearch(){
		call_server(searchform,'/manageList',allManageList);
	}
	function allManageList(list){
		$('#manageTable > tbody').empty();
		for(var i=0;i<list.length;i++){
			str="<tr onclick=\"manageDetail('"+list[i].manageId+"');\" style=\"cursor:pointer;\">";
			str+="<td>"+"NO"+"</td>";
			str+="<td>"+list[i].manageId+"</td>";
			str+="<td>"+list[i].manageName+"</td>";
			str+="<td>"+list[i].email+"</td>";
			str+="<td>"+list[i].phone+"</td>";
			str+="<td>"+list[i].regDt+"</td>";
			str+="<td>"+list[i].leaveYn+"</td>"; 
			str+="</tr>";
			$('#manageTable tbody').append(str);	
		}
	}
	
	function manageDetail(id){
		$('#MId').val(id);
		$('#iuType').val('U');
		call_server(hiddenform,'/MDetailList',oneManagelist);
	}
	function oneManagelist(mvo){
		$('#MaId').val(mvo.manageId);
		$('#Name').val(mvo.manageName);
		$('#email').val(mvo.email);
		$('#phone').val(mvo.phone);
		$('#leave').val(mvo.leaveYn);
		
		$('#ManageInfo').modal('show');
	}
	function uplode(){
		if($('#chkPwd').val()!=$('#Pwd').val()){
			alert("비밀번호가 일치하지 않습니다.");
			return;
		}
		call_server(manageform,'/updateManage',upManage);
	}
	function upManage(cnt){
		if(cnt>0){
			alert("등록완료");
			$('#ManageInfo').modal('hide');	
			Msearch();
		}else{
			alert("등록실패");
	}
}
	function newup(){
		$('#iuType').val('I');
		$('#ManageInfo').modal('show');
	}
	
	
	

	</script>
