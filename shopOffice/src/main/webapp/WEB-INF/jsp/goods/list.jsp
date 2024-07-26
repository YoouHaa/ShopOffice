<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  
  <main id="main" class="main">

  
              
       <div class="row">
    <div class="col-lg-4">
        <h3>대분류</h3>
        <table class="table table-hover" id = highT>
            <thead>
                <tr>
                    <th>대분류코드</th>
                    <th>대분류명</th>
                </tr>
            </thead>
            <tbody>
                <!-- 테이블 내용 -->
            </tbody>
        </table>
    </div>
    <div class="col-lg-4">
        <h3>중분류</h3>
        <table class="table table-hover" id = middleT>
            <thead>
                <tr>
                    <th>중분류코드</th>
                    <th>중분류명</th>
                </tr>
            </thead>
            <tbody>
                <!-- 테이블 내용 -->
            </tbody>
        </table>
    </div>
    <div class="col-lg-4">
        <h3>소분류</h3>
        <table class="table table-hover" id = smallT>
            <thead>
                <tr>
                    <th>소분류코드</th>
                    <th>소분류명</th>
                </tr>
                
   					 
              		
            </thead>
            <tbody>
                <!-- 테이블 내용 -->
            </tbody>
        </table>
    </div>
</div>
              <table id = categorylist>
              <select id="categoryHigh">
   				 <option value="">대분류 선택</option>
   				 
				</select>
				<select id="categoryMiddle">
   				 <option value="">중분류 선택</option>
   				 
				</select>
				<select id="categorySmall">
   				 <option value="">소분류 선택</option>
   				 
				</select>
				<th scope="col">카테고리 명</th>
                    <td><textarea id="categoryName" name = "ctName" rows="1" cols="30"></textarea></td>
				</table>
				<table>
			   	<td rowspan="2">
              			<button type="button" class="btn btn-info" onclick = 'search();'>조회</button>
              		</td>
              		<td rowspan="2">
              			<button type="button" class="btn btn-info" onclick = 'categoryfix();'>수정</button>
              		</td>
              		<td rowspan="2">
              			<button type="button" class="btn btn-info" onclick = 'newcategory();'>신규</button>
              		</td>
            </table>
            
  </main>
  
  <div class="modal fade" id="memberInfo" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">회원상세</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
             <table class="table table-hover"  id = "memberTable" >
                <thead>
                  <tr>
                    <th scope="col">회원ID</th>
                    <th scope="col">회원명</th>
                    <th scope="col">이메일</th>
                    <th scope="col">연락처</th>
                    <th scope="col">주소</th>
                    <th scope="col">가입일</th>
                    <th scope="col">탈퇴여부</th>
                    <th scope="col">탈퇴일</th>
                    <th scope="col">주문횟수</th>
                    <th scope="col">주문금액</th>
                  </tr>
                </thead>
           
              </table>
              
              <table class="table table-hover"  id = "orderTable"  >
                <thead>
                  <tr>
                    <th scope="col">NO</th>
                    <th scope="col">주문번호</th>
                    <th scope="col">주문상품명</th>
                    <th scope="col">상품수량</th>
                    <th scope="col">주문금액</th>
                    <th scope="col">수취인</th>
                    <th scope="col">배송지</th>
                    <th scope="col">배송상태</th>
                    <th scope="col">주문서보기</th>
                  </tr>
                </thead>
           
              </table>
              
           </div>
           <div class="modal-footer">
             <button type="button" class="btn btn-primary">저장</button>
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
           </div>
         </div>
       </div>
     </div><!-- End Vertically centered Modal-->
  
  <form id="hiddenform">
  	<input type='hidden' id='upCtCd' name='upCtCd'>
  	<input type='hidden' id='ctLevel' name='ctLevel'>
  	<input type='hidden' id='ctName' name='ctName'>
  	<input type='hidden' id='ctCd' name='ctCd'>
  	<input type='hidden' id='regDt' name='regDt'>
  	
  </form>
 
<script>
	function search(upCd, level){
		$('#upCtCd').val(upCd);
		$('#ctLevel').val(level);
		call_server(hiddenform,'/getCategoryList',getlist);
	}
	function getlist(list){
		if($('#ctLevel').val()==2){		//대분류를 클릭
			$('#middleT > tbody').empty();	//중	
			$('#smallT > tbody').empty();	//소	
		}else if($('#ctLevel').val()==3){		//중분류를 클릭
			$('#smallT > tbody').empty();	//소
		}else{
			$('#highT > tbody').empty();	//대분류	
			$('#middleT > tbody').empty();	//중	
			$('#smallT > tbody').empty();	//소
		}
		
		for(var i=0;i<list.length;i++){
			str="<tr onclick=\"search('"+list[i].ctCd+"','"+(Number(list[i].ctLevel)+1)+"');\" style=\"cursor:pointer;\">"
			str+="<td>"+list[i].ctCd+"</td>";
			str+="<td>"+list[i].ctName+"</td>";
			str+="</tr>";
			if($('#ctLevel').val()==2){		//대분류를 클릭
				$('#middleT tbody').append(str);
			}else if($('#ctLevel').val()==3){		//중분류를 클릭
				$('#smallT tbody').append(str);
			}else{
				$('#highT tbody').append(str);	
			}
			
		}
	}
	
	$('#categoryHigh').on('change', function() {
	    // 선택된 값 가져오기
	    var selectedLevel = $(this).val();
	    $('#categoryName').val($(this).find("option:selected").text());
	    // 선택된 레벨을 가지고 categorylist 함수 호출
	    categorylist(selectedLevel, '2');
	});
	
	$('#categoryMiddle').on('change', function() {
	    // 선택된 값 가져오기
	    var selectedseccd = $(this).val();
	    $('#categoryName').val($(this).find("option:selected").text());
	    // 선택된 레벨을 가지고 categorylist 함수 호출
	    categorylist(selectedseccd, '3');
	});
	$('#categorySmall').on('change', function() {
	    // 선택된 값 가져오기
	    var selectedseccd = $(this).val();
	    $('#categoryName').val($(this).find("option:selected").text());
	    // 선택된 레벨을 가지고 categorylist 함수 호출
	    categorylist(selectedseccd, '3');
	});

	function categorylist(ctcd, level){
			$('#ctCd').val(ctcd);
			$('#upCtCd').val(ctcd);
			$('#ctLevel').val(level);
			$('#ctName').val(name);
			call_server(hiddenform,'/getCategory',category);
	}
	$('#categorySmall').empty();
	var firstOption = "<option value=''>대분류 선택</option>";
	 $('#categoryHigh').append(firstOption);
	 var secoundOption = "<option value=''>중분류 선택</option>";
	 $('#categoryMiddle').append(secoundOption);
	 var threeOption = "<option value=''>소분류 선택</option>";
	 $('#categorySmall').append(threeOption);
	 
	function category(vo){
			for(var i=0;i<vo.length;i++){
				str="<option value='"+vo[i].ctCd+"'>"+vo[i].ctName+"</option>";
				if($('#ctLevel').val()==2){		//대분류를 클릭
				$('#categoryMiddle').append(str);
				
				}else if($('#ctLevel').val()==3){		//중분류를 클릭
					$('#categorySmall').append(str);
				
				}else{
					$('#categoryHigh').append(str);	
				}
			}
	}
	categorylist('','1');
	
	</script>
	<script>
	function categoryfix(){
		$('#ctName').val($('#categoryName').val());
		call_server(hiddenform,'/updateCate',fix);
	}
	
	function fix(cnt){
		if(cnt>0){
			alert("수정완료");
			search();
		}else{
			alert("수정실패");
		}
	}
	</script>
	<script>
	function newcategory(){
		$('#ctName').val($('#categoryName').val());
		if($('#ctCt').val()==''){
			$('#ctLevel').val(1);
		}
		call_server(hiddenform,'/newCategory',newcate);
	}
	function newcate(cnt){
		if(cnt>0){
			alert("등록완료");
			search();
		}else{
			alert("등록실패");
		}
	}
	
	</script>
	
	