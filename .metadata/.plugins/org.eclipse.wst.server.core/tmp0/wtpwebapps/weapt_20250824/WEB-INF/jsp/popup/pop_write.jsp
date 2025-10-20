<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

                    <div class="layer_bg" id="write_popup">
                        <div class="popup" style="width:910px; height: 900px;">
                            <div class="pop_title0" >
                                <span id="">&#10004;&nbsp;<****></span>  <%-- 각 게시판 메뉴명--%>
                                <div class="section1_btn">
                                    <button id="save_btn" onclick="">저장</button>  <%-- 찾은 파일도 함께 저장--%>
                                    <button id="del_btn" onclick="" class="del_btn">삭제</button> <%-- 삭제 버튼은 쓴 내용 그리드에서 더블클릭 할 때 만 보이는--%>
                                    <label for="layer_popup" class="popup_closs_btn">닫기</label>                    
                                </div>
                            </div>  
                            <div class="section2">
                                <div class="section2_line1">
                                    <form action="." method="post">
                                        <span>제목 :&nbsp;
                                            <input type="text" id="title" class="box_width450">                        
                                        </span>
                                        <span>&ensp;작성자 :&nbsp;
                                            <input type="text" id="writer" class="box_width100">                        
                                        </span>
                                        <span>&ensp;작성일 :&nbsp;
                                            <input type="date" id="today" value="<%= today %>">                        
                                        </span>
                                    </form>
                                </div>
                            </div>                            
                            <div>
                                <textarea class="pop_write_textarea"></textarea>
                            </div>
    
                            <%--여러 파일 업로드 및 삭제 input_file.html 참조--%>
                            <div >
                                <%--<form action="/upload" method="post" enctype="multipart/form-data">--%>

                                    <input type="file" id="fileInput" />
                                    <button class="find_btn" id="selectFileBtn">파일찾기</button>

                                    <div class="file-list" id="fileList"></div>

                                <%--</form>--%>        
                            </div>
                        </div>
                    </div>
                    <%--script - jsp 와 충돌 해결바람 script input_file.html 참조 --%>
                    <script>
                       
                      
                    </script>
                
                        
   

 
