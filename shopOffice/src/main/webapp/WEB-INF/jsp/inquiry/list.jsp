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
              <input type='hidden' id="currentPage" name="currentPage">
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
                          <label for="inputText" class="col-sm-1 col-form-label">답변여부</label>
                          <div class="col-sm-2">
                            <select class="form-control" id="replyYn" name="replyYn">
                                <option value=''>선택</option>
                                <option value='Y'>예</option>
                                <option value='N'>아니오</option>
                            </select>
                          </div>
                        </div>
              		<td rowspan="2">
              			<button type="button" class="btn btn-info" onclick = 'inquirySearch(1);'>조회</button>
              		</td>
              	</tr>
              	<tr>
              		<td>
              			<div class="row mb-3">
		                  <label for="inputDate" class="col-sm-1 col-form-label">등록일</label>
		                  <div class="col-sm-2">
		                    <input type="date" class="form-control"id="replyDtFrom" name="replyDtFrom">
		                  </div>
		                  ~
		                  <div class="col-sm-2">
		                    <input type="date" class="form-control"id="replyDtTo" name="replyDtTo">
		                  </div>
		                  
		                </div>
              		</td>
              	</tr>
              </table>
                
                
                
              </form>
              
            </div>
          </div>
           <div class="card">
            <div class="card-body">
              <!-- Table with hoverable rows -->
              <table class="table table-hover" id="InquiryTable">
                <thead>
                  <tr>
                    <th scope="col">No</th>
                    <th scope="col">문의유형</th>
                    <th scope="col">회원ID</th>
                    <th scope="col">회원명</th>
                    <th scope="col">제목</th>
                    <th scope="col">문의 등록일</th>
                    <th scope="col">답변여부</th>
                    <th scope="col">답변등록일</th>
                  </tr>
                </thead>
                <tbody>
                  
                    
                </tbody>
              </table>
              <!-- End Table with hoverable rows -->
			  <nav aria-label="Page navigation example">
                <ul class="pagination" id = "inquiryPage">
                 
                </ul>
              </nav><!-- End Pagination with icons -->
			   	
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
  
    <div class="modal fade" id="replyInfo" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">문의상세</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
             <table class="table table-hover"  id = "DetailTable" >
                <thead>
                  <tr>
                    <th scope="col">제목</th>
                    <td id = "title"></td>
                    </tr>
                    <tr>
                    <th scope="col">유형</th>
                    <td id = "boardType"></td>
                    </tr>
                    <th scope="col">회원ID/명</th>
                    <td id = "userIdTxt"></td>
                    <tr>
                    <th scope="col">문의일</th>    
                    <td id = "replyDt"></td>                            
                    </tr>
                    <th scope="col">첨부파일</th>
                    <td id = attchFile></td>
                    <tr>
                    <th scope="col">문의내용</th>
                    <td id = "content"></td>
                    </tr>
                    <th scope="col">답변내용</th>
                    <td><textarea id="replyContent" rows="4" cols="50"></textarea></td>
                </thead>
           		<tbody>
           		</tbody>
              </table>
              </div>
              <div class="modal-footer">
             <button type="button" class="btn btn-primary" onclick = 'replyAdd();'>답변등록</button>
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
           </div>
              </div>
              </div>
              </div>
              
        
            <form id="hiddenform">
  	<input type='hidden' id='userId' name='userId'>
  	<input type='hidden' id='boardSeq' name='boardSeq'>
  	<input type='hidden' id='rContent' name='replyContent'>
  </form>
  
 <script src="/assets/js/paging.js"></script> 
 
<script>
		function inquirySearch(no){
			$('#currentPage').val(no);
			call_server(searchform,'/getInquiryList',getInquiry);
		}
		
		function getInquiry(vo){
					list = vo.list;
				$('#InquiryTable > tbody').empty();
				for(var i=0;i<list.length;i++){
					str="<tr onclick=\"Detail('"+list[i].userId+"','"+list[i].boardSeq+"');\" style=\"cursor:pointer;\">";
					str+="<th scope=\"row\">"+((Number(vo.currentPage)-1)*vo.countPerPage+(i+1))+"</th>";
					str+="<td>"+list[i].boardSeq+"</td>";
					str+="<td>"+list[i].boardType+"</td>";
					str+="<td>"+list[i].userId+"</td>";
					str+="<td>"+list[i].userName+"</td>";
					str+="<td>"+list[i].title+"</td>";
					str+="<td>"+list[i].regDt+"</td>"; 
					str+="<td>"+list[i].replyYn+"</td>";
					str+="<td>"+list[i].replyDt+"</td>";
					str+="</tr>";
					$('#InquiryTable tbody').append(str);	
				}
				setPaging(inquiryPage, vo.startPage, vo.endPage, 'inquirySearch');

		}
				</script>
				<script>
				function Detail(Id, seq){
					$('#userId').val(Id);
					$('#boardSeq').val(seq);
			call_server(hiddenform,'/getDetailReply',InquiryDetail);
		}
				function InquiryDetail(vo){
					$('#DetailTable > tbody').empty();
					$('#title').text(vo.title);
					$('#boardType').text(vo.boardType);
					$('#userIdTxt').text(vo.userId + '/' + vo.userName);
					$('#replyDt').text(vo.replyDt);
					$('#attchFile').text(vo.attchFile);
					$('#content').text(vo.content);
					$('#replyContent').text(vo.replyContent);
					$('#replyInfo').modal('show');		//모달 열기
					}	
				</script>
				<script>
				function replyAdd(){
					$('#rContent').val($('#replyContent').val());
					call_server(hiddenform,'/getReplyAdd',replyAdding);
				}
				function replyAdding(cnt){
					if(cnt>0){
						alert("답변등록");
						$('#replyInfo').modal('hide');	//모달 닫기.
						inquirySearch();
					}else{
						alert("답변실패");
					}
				}
				
				</script>
				
				
				
				
				
		

