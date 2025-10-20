<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "ilj_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <div class="section1_nav"><i class="icon-calendar-plus-o"></i>일정조회</div>
                <div class="section1_btn">
                    <button id="search_btn" onclick="">검색</button>
                    <button id="print_btn" onclick="" class="print_btn">인쇄</button>
                </div>
            </div>
            <div class="section2">
                <div class="section2_line2">
                    <form action="." method="post">
                        <div>
                            <span>기간 :&nbsp;
                                <input type="date" id="firstDayOfMonth" value="<%= firstDayOfMonth %>">&nbsp; ~ &nbsp;
                                <input type="date" id="today" value="<%= today %>">                        
                            </span>
                            <span>&emsp;일정구분 :&nbsp;
                                <select id="gubun" class="select_cont100">
                                    <option value="gubun"><****></option>
                                </select>
                            </span>
                            <span>&emsp;주무부서 :&nbsp;
                                <select id="buseo" class="select_cont100">
                                    <option value="buseo"><****></option>
                                </select>
                            </span>
                            <span>&emsp;상태 :&nbsp;
                                <select id="" class="select_cont100">
                                    <option value="all">전체</option>
                                    <option value="">등록</option>
                                    <option value="">실행</option>
                                    <option value="">취소</option>
                                    <option value="">보류</option>
                                </select>
                            </span>
                            <span class="">&emsp;
                                <input  type="checkbox" id="jungyo">
                                <label for="jungyo">&nbsp;중요 해당업무만&emsp;</label>
                            </span>
                        </div>
                        <div>
                            <span class="search-box">제목&내용 :&nbsp;                             
                                <input style="width:713px; height:20px;" type="text" placeholder=" 검색어를 입력하십시오.">                   
                            </span>
                        </div>
                    </form>                                               
                </div> 
            </div>
            <div id=""  style="height: 576px; border: 1px solid #bcbcbc;">
                <div id="" name="">
                    일정조회 그리드영역
                </div>
            </div>
        </div>
    </div>

<%@ include file = "../../inc_footer.jsp" %>