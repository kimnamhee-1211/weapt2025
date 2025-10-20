<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "ilb_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-chart-bar"></i>아이디관리</span>
                <span class="section1_nav_mic">&emsp;
                    <i class="icon-mic"></i>퇴사된 직원 빈 성명란에 입사한 직원 성명을 선택 후 저장 변경하시기 바랍니다. (새 직원의 비밀번호는 본인 핸드폰 뒤 4자리로 자동 바뀝니다. )
                </span>
                <div class="section1_btn">
                    <button id="search_btn" onclick="">검색</button>
                    <button id="add_btn" onclick="">저장</button>                     
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
                그리드 영역 - 아이디 | 성명 | 부서 | 직책 | 구분 | 등록일 | 상태
                </div>
            </div>      
        </div>
    </div>

<%@ include file = "../../inc_footer.jsp" %>