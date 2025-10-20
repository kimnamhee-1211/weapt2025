<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "ilb_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-chart-bar"></i>퇴사직원조회</span>
                <span class="section1_nav_mic">&emsp;
                    <i class="icon-mic"></i>선택 후 복원이 가능합니다.
                </span>
                <div class="section1_btn">
                    <button id="search_btn" onclick="">검색</button>
                    <button id="res_btn" onclick="">복원</button>    <!-- 관리자 아닌 사용자도 복원할 수 있게-->                 
                    <button id="print_btn" onclick="" class="print_btn">인쇄</button>
                </div>
            </div>
            <div class="section2">
                <div class="section2_line1">
                    <form action="." method="post">
                        <span class="select-container">검색조건 :&nbsp;
                            <select id="" class="select_cont100">
                                <option value="all">전체</option>
                                <option value="position">직책</option>
                                <option value="name">성명</option>
                            </select>
                        </span>
                        <span class="search-box">&nbsp;                             
                            <input type="text" id="" class="box_width200">                   
                        </span>
                    </form>
                </div> 
            </div>
            <div id="" style="height: 611px; border: 1px solid #bcbcbc;">
                <div>
                그리드 영역 - 선택 | 퇴사일 | 퇴직사유 | 사번 | 입사일 | 부서 | 직책 | 성명 | 휴대전화번호 | 비고(근무장소) 

                </div>
            </div>    
        </div>
    </div>

<%@ include file = "../../inc_footer.jsp" %>