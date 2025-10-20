<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "soj_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <div class="section1_nav">
                    <i class="icon-star-filled"></i>공통코드관리   <!-- 메뉴 이동시 코드명 그리드와 첫행 그리드 표시-->
                </div>
                <div class="section1_btn">
                    <button id="add_btn" onclick="">추가</button>
                    <button id="save_btn" onclick="">저장</button>
                    <button id="del_btn" onclick="">삭제</button>
                </div>
            </div>
            <div class="section2">
                <div class="section2_line0">
                </div> 
            </div>
            <div id="" class="gridcont_left_200">
                <div class="section_middle_title">
                    <span><i class="icon-pause"></i>코드명</span>                 
                </div>
                <div style="height: 611px; border: 1px solid #bcbcbc;">
                    <div id="" name="">
                        코드 | 코드명
                    </div>
                </div>
            </div>
            <div id="" class="gridcont_right_870">
                <div class="section_middle_title">
                    <span><i class="icon-pause"></i>세부코드명</span>               
                </div>
                <div>
                    <div id="" name="" style="height: 611px; border: 1px solid #bcbcbc;">
                        세부코드명 등록 그리드영역
                    </div>
                </div>
            </div>          
        </div>       
    </div>
    
<%@ include file = "../../inc_footer.jsp" %>