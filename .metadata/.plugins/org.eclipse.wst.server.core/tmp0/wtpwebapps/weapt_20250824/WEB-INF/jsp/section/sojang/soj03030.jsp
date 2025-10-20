<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "soj_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-star-filled"></i>결제선등록</span>                
                <span class="section1_nav_mic">&emsp;
                    <i class="icon-mic"></i>설정관리에서 결재선이 없는 메뉴만 등록
                </span>
                <div class="section1_btn">                 
                    <button id="search_btn" onclick="">검색</button>
                </div>
            </div>
            <div class="section2">
                <div class="section2_line1">
                    <span id="" class="search-box">관리소명 :&nbsp;
                        <****>                       
                    </span>
                </div>
            </div>
            <div id="" class="gridcont_left_250">
                <div class="section_middle_title">
                    <span><i class="icon-pause"></i>일지명</span>
                    <span class="section_middle_btn">
                        <button id="search_btn" onclick="">검색</button>                        
                    </span>                 
                </div>
                <div style="height: 611px; border: 1px solid #bcbcbc;">
                    <div id="" name="">
                        일지명
                    </div>
                </div>
            </div>
            <div id="" class="gridcont_right_820">
                <div class="section_middle_title">
                    <span><i class="icon-pause"></i>결재선등록</span>
                    <span>
                    <span class="section_middle_btn">
                        <form action="." method="post">
                            <button id="add_btn" onclick="">추가</button>
                            <button id="del_btn" onclick="" class="admin_btn">삭제</button>
                            <button id="save_btn" onclick="">저장</button> 
                        </form>                        
                    </span>&emsp;&emsp;
                    <span id=""> &emsp;&#9726 일지명 : <****></span>           
                </div>
                <div>
                    <div id="" name="" style="height: 611px; border: 1px solid #bcbcbc;">
                        결제선등록 그리드영역
                    </div>
                </div>
            </div>
        </div>       
    </div>
    
<%@ include file = "../../inc_footer.jsp" %>