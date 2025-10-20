<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "hwa_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-picture"></i>수목관리</span>
                <span class="section1_nav_mic">&emsp;<i class="icon-mic"></i>
                    수목명 행을 더블 클릭하면 해당 수목관리이력카드메뉴로 이동됩니다.
                </span>
                <div class="section1_btn">
                    <button id="search_btn" onclick="">검색</button>
                    <button id="add_btn" onclick=""><a href="hwa05025.jsp">추가</a></button>            
                    <button id="print_btn" onclick="" class="print_btn">인쇄</button>
                </div>
            </div>
            <div class="section2">
                <div class="section2_line0">
                </div> 
            </div>
            <div id="we_grid">
                여기부터 그리드 입니다.
            </div>            
        </div>
    </div>

<%@ include file = "../../inc_footer.jsp" %>