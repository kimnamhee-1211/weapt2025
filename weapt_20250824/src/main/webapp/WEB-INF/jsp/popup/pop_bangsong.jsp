<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

                    <div class="layer_bg">
                        <div class="popup" style="width:910px;">
                            <div class="pop_title0" >
                                <span id="">&#10004;&nbsp;방송문</span>  
                                <div class="section1_btn">
                                    <button id="save_btn" onclick="">저장</button>  
                                    <button id="del_btn" onclick="" class="del_btn">삭제</button> <%-- 삭제 버튼은 쓴 내용 그리드에서 더블클릭 할 때 만 보이는--%>
                                    <label for="layer_popup" class="popup_closs_btn">닫기</label>                    
                                </div>
                            </div>  
                            <div class="section2">
                                <div class="section2_line2">
                                    <form action="." method="post">
                                        <div>
                                            <span>방송일 :&nbsp;
                                                <input type="date" id="today" value="<%= today %>">                        
                                            </span>
                                            <span>&emsp;방송시간 :&nbsp;
                                                <input type="text" id="title" class="box_width200">                        
                                            </span>
                                            <span>&emsp;방송횟수(회) :&nbsp;
                                                <input type="text" id="writer" class="box_width100">                        
                                            </span>
                                            <span>&emsp;방송인 :&nbsp;
                                                <input type="text" id="writer" class="box_width100">                        
                                            </span>                                           
                                        </div>    
                                        <div>
                                            <span>제목 :&nbsp;
                                                <input type="text" id="title" class="box_width600">                        
                                            </span>
                                            <span>&emsp;&nbsp;방송의뢰자 :&nbsp;
                                                <input type="text" id="writer" class="box_width100">                        
                                            </span>
                                        </div>
                                    </form>
                                </div>
                            </div>                            
                            <div>
                                <textarea id="" class="pop_bangsong_textarea"></textarea>
                            </div>                            
                        </div>
                    </div>

                
                        
   

 
