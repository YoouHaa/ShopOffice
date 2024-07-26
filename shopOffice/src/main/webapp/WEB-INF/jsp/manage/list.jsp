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
                      <label for="goodsName" class="col-sm-4 col-form-label">�����ڸ�</label>
                  </td>
                  <td style="width:200px;">
                      <input type="text" class="form-control" id="manageName" name="manageName">
                  </td>
                  <td style="width:250px;">
                  
                      <label for="goodsStatus" class="col-sm-4 col-form-label" style="writing-mode: horizontal-tb;">��翩��</label>
                   </td>
                   <td style="width:200px;">
                       <select class="form-control" id="leaveYn" name="leaveYn">
                         <option value=''>����</option>
                         <option value='Y'>Y</option>
                         <option value='N'>N</option>
                       </select>
                  </td>
                  <td style="text-align: right;">
                    <button type="button" class="btn btn-primary" onclick='Msearch();'>��ȸ</button>
                  </td>
                  <td>
                    <button type="button" class="btn btn-primary" onclick='newup();'>�ű�</button>
                  </td>
                  </tr>
                    </table>
                 </form>
          </div>
        </div> <!-- card �ݱ� -->
      </div> <!-- col-lg-12 �ݱ� -->
    </div> <!-- row �ݱ� -->
  </section> <!-- section �ݱ� -->
    <div class="row">
    <div class="col-lg-12">
        <table class="table table-hover" id = manageTable>
            <thead>
                  <tr>
                    <th scope="col">NO</th>
                    <th scope="col">������ID</th>
                    <th scope="col">�����ڸ�</th>
                    <th scope="col">�̸���</th>
                    <th scope="col">����ó</th>
                    <th scope="col">�����</th>
                    <th scope="col">��翩��</th>
                  </tr>
                </thead>
            <tbody>
                <!-- ���̺� ���� -->
            </tbody>
        </table>
    </div>
   </div>
   <nav aria-label="Page navigation example">
                <ul class="pagination">
                  
                </ul>
              </nav><!-- End Pagination with icons -->
</main> <!-- main �ݱ� -->
  
<div class="modal fade" id="ManageInfo" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">�����ڵ��/����</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
           	<form id="manageform">
           	<input type='text' id='iuType' name='iuType'>
           	
             <table class="table table-hover"  border=1>
                  <tr>
                    <th scope="col">������ID</th>
                    <td><input type='text' id = "MaId" name = "manageId"></td>
                    <th scope="col">�����ڸ�</th>
                    <td><input type='text' id = "Name" name = "manageName"></td>
                  </tr>
                  <tr>
                    <th scope="col">��й�ȣ</th>
                    <td ><input type='password' id = "Pwd" name = "managePwd"></td>
                    <th scope="col">��й�ȣȮ��</th>
                    <td>
                    <input type='password' id = "chkPwd">
                    </td>
                    </tr>
                  <tr>
                    <th scope="col">�̸���</th>    
                    <td ><input type='text' id = "email" name = "email">
                    </td>
                    </tr>
                   <tr>
                    <th scope="col">��翩��</th>    <td>
                    <select id="leave" name ="leaveYn">
	                    <option value="">����</option>
	                    <option value="Y">Y</option>
	                    <option value="N">N</option>
	                    </select></td>
                    </tr>
                    
                </table>
                </form>
                <div class="modal-footer">
             <button type="button" class="btn btn-primary" onclick='uplode();'>����</button>
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">�ݱ�</button>
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
             <h5 class="modal-title">�˸�</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
             <table class="table table-hover"  border=1>
             <div class="modal-footer">
             <h3 class="modal-body">�ŷ�ó������ �����Ͻðڽ��ϱ�?</h3>
             <button type="button" class="btn btn-primary" onclick='goodsUp();'>��</button>
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">�ƴϿ�</button>
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
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
			return;
		}
		call_server(manageform,'/updateManage',upManage);
	}
	function upManage(cnt){
		if(cnt>0){
			alert("��ϿϷ�");
			$('#ManageInfo').modal('hide');	
			Msearch();
		}else{
			alert("��Ͻ���");
	}
}
	function newup(){
		$('#iuType').val('I');
		$('#ManageInfo').modal('show');
	}
	
	
	

	</script>
