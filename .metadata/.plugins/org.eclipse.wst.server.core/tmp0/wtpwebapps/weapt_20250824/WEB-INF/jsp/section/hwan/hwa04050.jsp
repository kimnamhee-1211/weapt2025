<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "hwa_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-home"></i>월간근태조회</span>
                <div class="section1_btn">
                    <button id="search_btn" onclick="">검색</button>                
                    <button id="print_btn" onclick="" class="print_btn">인쇄</button>
                </div>
            </div>
            <div class="section2">
                <div class="section2_line1">
                    <form action="." method="post">
                        <span class="search-box">검색조건 :&nbsp;
                            <select id="year" class="select_cont70">
                                <option  value="year"><****></option>
                            </select>년&emsp;
                            <select id="month" class="select_cont70">&nbsp;
                                <option value="month"><****></option>
                            </select>월&nbsp;                        
                        </span>&emsp;
                        <span>
                            <input type="checkbox" id="attendance">
                            <label for="attendance">근태등록 한  직원만 보기</label>
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