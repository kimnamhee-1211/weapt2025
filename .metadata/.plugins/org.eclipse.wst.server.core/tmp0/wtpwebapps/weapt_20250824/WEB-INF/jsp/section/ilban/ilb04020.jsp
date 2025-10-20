<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "ilb_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-chart-bar"></i>개인근태조회</span>
                <span class="section1_nav_mic">&emsp;
                    <i class="icon-mic"></i>수정은 행당 그리드에 직접입력 저장합니다.
                </span>
                <div class="section1_btn">
                    <button id="search_btn" onclick="">검색</button>
                    <button id="save_btn" onclick="">저장</button>
                    <button id="del_btn" onclick="">삭제</button>                  
                    <button id="print_btn" onclick="" class="print_btn">인쇄</button>
                </div>
            </div>
            <div class="section2">
                <div class="section2_line1">
                    <form action="." method="post">
                        <span class="search-box">조회기간 :&nbsp;
                            <input type="date" id="st_date">&nbsp; ~ &nbsp;<input type="date" id="end_date">                       
                        </span>
                        <span class="select-container">&emsp;구분 :&nbsp;
                            <select id="work" class="select_cont100">
                                <option value="work">재직자</option>
                                <option value="no_work">퇴직자</option>
                            </select>
                        </span>
                        <span class="select-container">&emsp;성명 :&nbsp;
                            <select id="name" class="select_cont100">
                                <option value="name"><****></option>
                            </select>
                        </span>
                    </form>
                </div> 
            </div>
            <div id="" style="height: 611px; border: 1px solid #bcbcbc;">
                <div>
                여기부터 그리드 입니다.  <!-- 그리드에서 수정 가능 하므로 기간을 둘로 쪼개야 -->
                </div>
            </div>
        </div>
    </div>

<%@ include file = "../../inc_footer.jsp" %>