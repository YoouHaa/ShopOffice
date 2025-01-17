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
            <input type = "text" id = "currentPage" name ="currentPage" value="1">
              <table class="col-lg-12">
                <tr>
                  <td>
                    <div class="row mb-4">
                      <label for="goodsName" class="col-sm-1 col-form-label" style="writing-mode: horizontal-tb;">상품명</label>
                      <div class="col-sm-2">
                        <input type="text" class="form-control" id="goodsName" name="goodsName">
                      </div>
                    </div>
                    <div class="row mb-4">
                      <label for="goodsStatus" class="col-sm-1 col-form-label" style="writing-mode: horizontal-tb;">상품상태</label>
                      <div class="col-sm-2">
                        <select class="form-control" id="goodsStatus" name="goodsStatus">
                          <option value='판매중'>판매중</option>
                          <option value='판매종료'>판매종료</option>
                        </select>
                      </div>
                    </div>
                  </td>
                  <td rowspan="2">
                    <table id="categorylist">
                      <tr>
                        <td style="writing-mode: horizontal-tb;">카테고리</td>
                        <td>
                          <select id="categoryHigh" name="categoryHigh">
                            <option value="">대</option>
                          </select>
                        </td>
                        <td>
                          <select id="categoryMiddle" name ="categoryMiddle">
                            <option value="">중</option>
                          </select>
                        </td>
                        <td>
                          <select id="categorySmall" name = "categorySmall">
                            <option value="">소</option>
                          </select>
                        </td>
                      </tr>
                    </table>
                  </td>
                  <td>
                    <div class="row mb-4">
                      <label for="vendor" class="col-sm-1 col-form-label" style="writing-mode: horizontal-tb;">거래처</label>
                      <div class="col-sm-4">
                        <select class="form-control" id="supplierName" name="supplierCd">
                          <option value=''>거래처</option>
                        </select>
                      </div>
                    </div>
                  </td>
                  <td rowspan="2">
                    <button type="button" class="btn btn-info" onclick='goodsSearch(1);'>조회</button>
                  </td>
                  <td rowspan="2">
                    <button type="button" class="btn btn-info" onclick='newgoods();'>등록</button>
                  </td>
                </tr>
              </table>
            <input type='hidden' id='ctCd' name='ctCd'>
  			<input type='hidden' id='upCtCd' name='upCtCd'>
  			<input type='hidden' id='ctLevel' name='ctLevel'>
            </form>
          </div>
        </div> <!-- card 닫기 -->
      </div> <!-- col-lg-12 닫기 -->
    </div> <!-- row 닫기 -->
  </section> <!-- section 닫기 -->
    <div class="row">
    <div class="col-lg-12">
        <table class="table table-hover" id = goodsTable>
            <thead>
                  <tr>
                    <th scope="col">NO</th>
                    <th scope="col">상품코드</th>
                    <th scope="col">상품명</th>
                    <th scope="col">카테고리</th>
                    <th scope="col">판매가</th>
                    <th scope="col">재고량</th>
                    <th scope="col">등록일</th>
                    <th scope="col">상품상태</th>
                  </tr>
                </thead>
            <tbody>
                <!-- 테이블 내용 -->
            </tbody>
        </table>
    </div>
   </div>
  

 
 
   <nav aria-label="Page navigation example">
                <ul class="pagination" id = "goodsPaging">
                  
                </ul>
              </nav><!-- End Pagination with icons -->
</main> <!-- main 닫기 -->
  
<div class="modal fade" id="goodsInfo" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">상품등록/수정</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
           	<form id="goodsform" enctype = "multipart/form-data">
           		<input type='text' id='iuType' name='iuType'>
             <table class="table table-hover"  border=1>
                  <tr>
                    <th scope="col">상품코드</th>
                    <td colspan="3"><input type='text' id = "Cd" name = "goodsCd">(상품코드는 수정이 불가합니다.)</td>
                  </tr>
                  <tr>
                    <th scope="col">상품명</th>
                    <td colspan="3"><input type='text' id = "Name" name = "goodsName"></td>
                  </tr>
                  <tr>
                    <th scope="col">정상가</th>
                    <td ><input type='text' id = "NPrice" name = "normalPrice"></td>
                    <th scope="col">판매가</th>
                    <td colspan="2"><input type='text' id = "SPrice" name = "sellPrice">
                  <tr>
                    <th scope="col">재고수량</th>    
                    <td ><input type='text' id = "ivQty" name = "ivQty">
                    <th scope="col">상품상태</th> 
                    <td>
                    <select id="Status" name="goodsStatus">
                          <option value='판매중'>판매중</option>
                          <option value='판매종료'>판매종료</option>
                    </select>   
                    </td>                            
                  </tr>
                  <tr>
                    <th scope="col">카테고리</th>
                    <td>
	                    <select id="categorydae" name ="categoryHigh">
	                    <option value="">대</option>
	                    </select>
	                    <select id="categoryjung" name ="categoryMiddle">
	                    <option value="">중</option>
	                    </select>
	                    <select id="categoryso" name ="categorySmall">
	                    <option value="">소</option>
	                    </select>
                    </td>
                    <th scope="col">거래처</th>
                    <td>
                    <select id="supplier" name ="supplierCd">
                    <option value="">===선택===</option>
                    </select>
                    </td>
                  </tr>
                  <tr>
                    <th scope="col">섬네일</th>
                    <td colspan="2"><input type='file' id = "thumnailFile" name = "thumnailFile">
                  </tr>
                  <tr>
                    <th scope="col">이미지</th>
                    <td >
                        <div class='col-sm-10' id = "img">
                        	<div class='input-group mb-3'><input type = "file"  name = "imgFileList[0]" class='form-control'></div>
                        </div></td>
                    <td><button type="button" class="btn btn-primary" onclick = 'addbutton()'>+</button>
                  </tr>
                  <tr>
                    <th scope="col">설명</th>
                    <td colspan="3"><textarea id="content" name="content" rows="4" cols="100"></textarea></td>
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
                	<input type='hidden' id='goodsCd' name='goodsCd'>
                	<input type='hidden' id='ctCd' name='ctCd'>
                	<input type='hidden' id='ctLevel' name='ctLevel'>
                	<input type='hidden' id='upCtCd' name='upCtCd'>
                  </form>
      <div class="modal fade" id="goodsupdate" tabindex="-1">
       <div class="modal-dialog modal-l modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">알림</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
             <table class="table table-hover"  border=1>
             <div class="modal-footer">
             <h3 class="modal-body">상품정보를 저장하시겠습니까?</h3>
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

		$('#categoryHigh').on('change', function() {
		    var selectedLevel = $(this).val();
		    categorylist(selectedLevel, '2');
		});
		$('#categoryMiddle').on('change', function() {
		    var selectedLevel = $(this).val();
		    categorylist(selectedLevel, '3');
		});
		
		$('#categorydae').on('change', function() {
		    var selectedLevel = $(this).val();
		    categorylist2(selectedLevel, '2');
		    
		    //goodsDetail(selectedLevel, '2');
		    
		    //newgoods(selectedLevel, '2');
		});
		$('#categoryjung').on('change', function() {
		    var selectedLevel = $(this).val();
		    //goodsDetail(selectedLevel, '3');
		    categorylist2(selectedLevel, '3');
		});
		
		
		function categorylist(ctcd, level){
			$('#ctCd').val(ctcd);
			$('#upCtCd').val(ctcd);
			$('#ctLevel').val(level);
			$('#ctName').val(name);
			call_server(searchform,'/littlecate',category);
		}
		
		function category(vo){
			
			if($('#ctLevel').val()=='2'){
				$('#categoryMiddle').empty();
				$('#categorySmall').empty();
			}else if($('#ctLevel').val()=='3'){
				$('#categorySmall').empty();
			}
			
			for(var i=0;i<vo.length;i++){
				str="<option value='"+vo[i].ctCd+"'>"+vo[i].ctName+"</option>";
					  if($('#ctLevel').val()==2){		//대분류를 클릭
				$('#categoryMiddle').append(str);
				
				}
					  else if($('#ctLevel').val()==3){		//중분류를 클릭
					$('#categorySmall').append(str);
				
				}else{
					$('#categoryHigh').append(str);
					$('#categorydae').append(str);
					
				}
			}
		}
	
		categorylist('','1');
		
		call_server(searchform,'/supplierName',supplierlist);
		
		function supplierlist(sup){
			for(var i=0;i<sup.length;i++){
				str="<option value='"+sup[i].supplierCd+"'>"+sup[i].supplierName+"</option>";
				$('#supplierName').append(str);
				$('#supplier').append(str);
			}
		}
		
		function goodsSearch(no){
			if(no==undefined){
				$('#currentPage').val(1);
			}else{
				$('#currentPage').val(no);
			}
			call_server(searchform,'/goodsList',goodslist);
		}
		
		function goodslist(vo){
			list = vo.list;
			$('#goodsTable > tbody').empty();
			for(var i=0;i<list.length;i++){
				str="<tr onclick=\"goodsDetail('"+list[i].goodsCd+"','"+list[i].ctCd+"','"+list[i].ctLevel+"');\" style=\"cursor:pointer;\">";
				str+="<th scope=\"row\">"+((Number(vo.currentPage)-1)*vo.countPerPage+(i+1))+"</th>";
				str+="<td>"+list[i].goodsCd+"</td>";
				str+="<td>"+list[i].goodsName+"</td>";
				str+="<td>"+list[i].ctName+"</td>";
				str+="<td>"+list[i].sellPrice+"</td>";
				str+="<td>"+list[i].ivQty+"</td>";
				str+="<td>"+list[i].regDt+"</td>"; 
				str+="<td>"+list[i].goodsStatus+"</td>";
				str+="</tr>";
				$('#goodsTable tbody').append(str);	
			}
			setPaging(goodsPaging, vo.startPage, vo.endPage, 'goodsSearch');

		}
		
		function goodsDetail(gd, cd, level){
			console.log(1);
			$('#iuType').val('U');	//수정
			console.log(2);
			$('#goodsCd').val(gd);
			console.log(3);
			$('#ctCd').val(cd);
			console.log(4);
			$('#upCtCd').val(cd);
			console.log(5);
			$('#ctLevel').val(level);
			console.log(6);
			call_server(hiddenform,'/goodsDetail',goodsDetailList);
		}
		
		
		function goodsDetailList(vo){
			//console.log(vo);
			$('#Cd').val(vo.goodsCd);
			$('#Name').val(vo.goodsName);
			$('#NPrice').val(vo.normalPrice);
			$('#SPrice').val(vo.sellPrice);
			$('#ivQty').val(vo.ivQty);
			$('#Status').val(vo.goodsStatus);
			$('#supplier').val(vo.supplierCd);
			console.log(444);
			if($('#ctLevel').val()=='2'){
				$('#categoryjung').empty();
				$('#categoryso').empty();
			}else if($('#ctLevel').val()=='3'){
				$('#categoryso').empty();
			}
			console.log(555);
			
			for(var i=0;i<vo.categorydae.length;i++){
				$('#categorydae').append("<option value='"+vo.categorydae[i].ctCd+"'>"+vo.categorydae[i].ctName+"</option>");
				
			}
			console.log(666);
			for(var i=0;i<vo.categoryjung.length;i++){
				$('#categoryjung').append("<option value='"+vo.categoryjung[i].ctCd+"'>"+vo.categoryjung[i].ctName+"</option>");
			}
			console.log(777);
			for(var i=0;i<vo.categoryso.length;i++){
				$('#categoryso').append("<option value='"+vo.categoryso[i].ctCd+"'>"+vo.categoryso[i].ctName+"</option>");
			
			}
			console.log(888);
			$('#categoryso').val(vo.ctCd);
			$('#categoryjung').val(vo.categoryMiddle);
			$('#categorydae').val(vo.categoryHigh);
			console.log(99);
			$('#content').text(vo.content);
			//$('#thumnailUrl').val(vo.thumnailUrl);
			console.log(100);
			$('#goodsInfo').modal('show');
		}
		
		//등록일때
		function uplode(){
			$('#goodsupdate').modal('show');
		}
		
		
		function goodsUp(){
			
			call_server(goodsform,'/goodsUpdate',resultGoodsUpdate);
		}
		
		function resultGoodsUpdate(cnt){
			if(cnt>0){
				$('#goodsInfo').modal('hide');
				$('#goodsupdate').modal('hide');
				goodsSearch();
			}else{
				alert("수정실패");
			}
		}
		
		function newgoods(){
			$('#iuType').val('I');	//등록
			$('#goodsInfo').modal('show');
		}			
		
		var imgIdx=1;
		function addbutton(){
			str="<div class='input-group mb-3'>";
		 	str+="<input type =\"file\" name = \"imgFileList["+imgIdx+"]\" class='form-control'>";
		 	str+="<button type=\"button\" class=\"btn btn-primary\" onclick =\'delbutton(this)\'>삭제</button>";
		 	str+="</div>";
		 	$('#img').append(str);
		 	imgIdx++;
		}
		function delbutton(obj){
			$(obj).closest('div').remove();
		}
		
		
		
		//===================================================
			
		function categorylist2(ctcd, level){
			$('#ctCd').val(ctcd);
			$('#upCtCd').val(ctcd);
			$('#ctLevel').val(level);
			$('#ctName').val(name);
			call_server(searchform,'/littlecate',category2);
		}
		function category2(vo){
			
			if($('#ctLevel').val()=='2'){
				$('#categoryjung').empty();
				$('#categoryso').empty();
			}else if($('#ctLevel').val()=='3'){
				$('#categoryso').empty();
			}
			
			for(var i=0;i<vo.length;i++){
				str="<option value='"+vo[i].ctCd+"'>"+vo[i].ctName+"</option>";
					  if($('#ctLevel').val()==2){		//대분류를 클릭
				$('#categoryjung').append(str);
				
				}
				  else if($('#ctLevel').val()==3){		//중분류를 클릭
					$('#categoryso').append(str);
				
				}
			}
		}	
			
		
	</script>
