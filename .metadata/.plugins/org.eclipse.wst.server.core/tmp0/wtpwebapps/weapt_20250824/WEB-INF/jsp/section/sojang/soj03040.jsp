<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "soj_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <div class="section1_nav">
                    <i class="icon-star-filled"></i>메시지충전
                </div>
                <div class="section1_btn">                 
                    <button id="search_btn" onclick="">검색</button>
                    <button id="add_btn" onclick="">추가</button>   <!-- 그리드에 행추가(최하단) 오늘날짜 -->
                    <button id="save_btn" onclick="">저장</button>  <!-- 그리드에 입력 저장--> 
                </div>
            </div>
            <div class="section2">
                <div class="section2_line1">
                    <form action="." method="post">
                        <span id="" class="search-box">관리소명 :&nbsp;
                            <****>                       
                        </span>&emsp;
                        <span class="search-box">충전기간 :&nbsp;
                            <input class="search-txt100" type="date" id="st_date">&nbsp; ~ &nbsp;   
                            <input class="search-txt100" type="date" id="end_date">                        
                        </span>
                    </form>
                </div> 
            </div>
            <div id=""  style="height: 611px; border: 1px solid #bcbcbc;">
                <div id="" name="">
                    메지지충전 그리드영역  열에  금액 추가
                </div>
            </div>   
        </div>       
    </div>
    
<%@ include file = "../../inc_footer.jsp" %>