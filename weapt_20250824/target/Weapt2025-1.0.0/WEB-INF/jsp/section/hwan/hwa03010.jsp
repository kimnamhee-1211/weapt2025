<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "hwa_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-picture"></i>보안경비관리</span>
                <div class="section1_btn">
                    <button id="search_btn" onclick="">검색</button>
                    <input type="checkbox" id="layer_popup" class="layer_popup">
                    <label for="layer_popup" class="pop_labal popup_btn" >작성</label>
                    <!-- 변경 팝업시작--> 
                    <%@ include file = "../../popup/pop_write.jsp" %>
                    <!-- 팝업끝-->               
                    <button id="print_btn" onclick="" class="print_btn">인쇄</button>    
                </div>
            </div>
            <div class="section2">
                <div class="section2_line1">
                    <form action="." method="post">
                        <span class="select-container">검색조건 :&nbsp;
                            <select id="select" name="" class="box_width100">
                                <option value="all">전체</option>
                                <option value="more">제목+내용</option>
                                <option value="title">제목</option> 
                                <option value="memo">내용</option> 
                            </select>
                        </span>
                        <span class="search-box">&nbsp;
                            <input type="" id="" class="box_width200">                        
                        </span>
                    </form>
                </div>
            </div>
            
            <div style="height: 611px; border: 1px solid #bcbcbc;">
                <div id="" name="">
                    No | 작성일 | 제목 | 작성자  -- 제목 끝에 첨부파일 있다는 표시  <i class="icon-floppy"></i>
                </div>
            </div>  
            
        </div>
    </div>

<%@ include file = "../../inc_footer.jsp" %>