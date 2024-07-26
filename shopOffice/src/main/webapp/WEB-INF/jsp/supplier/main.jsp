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
                      <label for="goodsName" class="col-sm-4 col-form-label">�ŷ�ó��</label>
                  </td>
                  <td style="width:200px;">
                      <input type="text" class="form-control" id="supplierName" name="supplierName">
                  </td>
                  <td style="width:250px;">
                  
                      <label for="goodsStatus" class="col-sm-4 col-form-label" style="writing-mode: horizontal-tb;">�ŷ�ó����</label>
                   </td>
                   <td style="width:200px;">
                       <select class="form-control" id="supplierStatus" name="supplierStatus">
                         <option value='�ŷ���'>�ŷ���</option>
                         <option value='�ŷ�����'>�ŷ�����</option>
                       </select>
                  </td>
                  <td style="text-align: right;">
                    <button type="button" class="btn btn-primary" onclick='search();'>��ȸ</button>
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
        <table class="table table-hover" id = supplierTable>
            <thead>
                  <tr>
                    <th scope="col">NO</th>
                    <th scope="col">�ŷ�ó�ڵ�</th>
                    <th scope="col">�ŷ�ó��</th>
                    <th scope="col">��ǥ��</th>
                    <th scope="col">��ȭ��ȣ</th>
                    <th scope="col">����ڸ�</th>
                    <th scope="col">����ڿ���ó</th>
                    <th scope="col">������̸���</th>
                    <th scope="col">����</th>
                    <th scope="col">�����</th>
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
</main> <!-- main �ݱ� -->
  
<div class="modal fade" id="SupplierInfo" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">�ŷ�ó���/����</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
           	<form id="supplierform">
           	<input type='text' id='iuType' name='iuType'>
           	<input type='text' id='phone' name='phone'>
           	
             <table class="table table-hover"  border=1>
                  <tr>
                    <th scope="col">�ŷ�ó�ڵ�</th>
                    <td colspan="3"><input type='text' id = "Cd" name = "supplierCd">(�ŷ�ó�ڵ�� ������ �Ұ��մϴ�.)</td>
                  </tr>
                  <tr>
                    <th scope="col">�ŷ�ó��</th>
                    <td colspan="3"><input type='text' id = "Name" name = "supplierName"></td>
                  </tr>
                  <tr>
                    <th scope="col">��ǥ��</th>
                    <td ><input type='text' id = "supplierCeo" name = "supplierCeo"></td>
                    </tr>
                    <tr>
                    <th scope="col">��ȭ��ȣ</th>
                    <td colspan="2">
                    <input type='text' id = "phone1" name = "phone1">
                    <input type='text' id = "phone2" name = "phone2">
                    <input type='text' id = "phone3" name = "phone3">
                    </td>
                    </tr>
                  <tr>
                    <th scope="col">����ڸ�</th>    
                    <td ><input type='text' id = "opName" name = "opName">
                    </td>
                    </tr>
                    <tr>
                    <th scope="col">����ڿ���ó</th>    
                    <td ><input type='text' id = "opPhone1" name = "opPhone1">
                    <input type='text' id = "opPhone2" name = "opPhone2">
                    <input type='text' id = "opPhone3" name = "opPhone3">
                    </td>
                    </tr>
                    <tr>
                    <th scope="col">������̸���</th>    
                    <td ><input type='text' id = "opEmail1" name = "opEmail1">
                   		@<input type='text' id = "opEmail2" name = "opEmail2">
                    <select id="opEmail" name ="opEmail2">
	                    <option value="">�����Է�</option>
	                    <option value="">naver.com</option>
	                    <option value="">gmail.com</option>
	                    </select>
                    </td>
                    </tr>
                  <tr>
                    <th scope="col">�ŷ�����</th>
                    <td>
	                    <select id="status" name ="supplierStatus">
	                    <option value="�ŷ���">�ŷ���</option>
	                    <option value="�ŷ�����">�ŷ�����</option>
	                    </select>
	                    
                    </td>
                    
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
			alert("��������");
		}
	}
	
	
	function newup(){ //���
		$('#iuType').val('I');
		$('#SupplierInfo').modal('show');
	}
	
	
	</script>
