<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "ilb_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-chart-bar"></i>관리직원등록</span>
                <div class="section1_btn">
                    <button id="search_btn" onclick="">검색</button>
                    <button id="add_btn" onclick="">입사</button>     <!-- 그리드에 직접입력 저장합니다-->
                    <button id="closs_btn" onclick="" class="closs_btn">퇴사</button>                  
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
                그리드 영역 - 선택 | 사번 | 입사일 | 부서 | 직책 | 성명 | 휴대전화번호 | 비고(근무장소) 
                <!-- 음양 생년월일(일정에 생일 등록) 일정(사용) 민원(사용) 은 제외 함-->
                </div>
            </div>    
        </div>
    </div>

<%@ include file = "../../inc_footer.jsp" %>