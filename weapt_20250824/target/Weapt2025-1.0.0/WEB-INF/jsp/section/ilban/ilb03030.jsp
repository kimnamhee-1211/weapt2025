<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "ilb_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-chart-bar"></i>관리직원자격증관리</span>
                <span class="section1_nav_mic">&emsp;
                    <i class="icon-mic"></i>검색 후 직원을 선택하여 취득한 자격사항을 그리드에 추가 입력 저장합니다.
                </span>
                <div class="section1_btn">
                    <button id="search_btn" onclick="">검색</button>
                    <button id="add_btn" onclick="">추가</button>
                    <button id="add_btn" onclick="">저장</button>                     
                    <button id="del_btn" onclick="" class="del_btn">삭제</button> 
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
            <div id="" class="gridcont_left_300">
                <div style="height: 611px; border: 1px solid #bcbcbc;">
                    그리드 영역 - 사번 | 직책 | 성명
                    <!-- 직책이 추가 되었음-->
                </div>
            </div>
            <div id="" class="gridcont_right_770">
                <div style="height: 611px; border: 1px solid #bcbcbc;">
                    그리드 영역 - 선택 | 자경명 | 취득일 | 발행처 | 자격(면허)번호 |  비고
                    <!-- 그리드에 입력-->
                </div>
            </div>                  
        </div>
    </div>

<%@ include file = "../../inc_footer.jsp" %>