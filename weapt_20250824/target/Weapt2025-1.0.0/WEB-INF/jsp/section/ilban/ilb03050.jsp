<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "ilb_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-chart-bar"></i>전자결재선조회/등록</span>
                <span class="section1_nav_mic">&emsp;
                    <i class="icon-mic"></i>결재 직책이 변동된 경우 장부마다 수정 저장할 수 있습니다.
                    <!-- 현재는 저장할 수 없으나 저장 할 수 있게-->
                </span>
                <div class="section1_btn">
                    <button id="search_btn" onclick="">검색</button>
                    <button id="save_btn" onclick="">저장</button>                
                </div>
            </div>
            <div id="" style="height: 658px; border: 1px solid #bcbcbc;">               
                <div >
                    그리드 영역 - 장부명 | 결재1 | 결재2 | 결재3 | 결재4 | 결재5 | 결재6
                </div>
            </div>             
        </div>
    </div>

<%@ include file = "../../inc_footer.jsp" %>