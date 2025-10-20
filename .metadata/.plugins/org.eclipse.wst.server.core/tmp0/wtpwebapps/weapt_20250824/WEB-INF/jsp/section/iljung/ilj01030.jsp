<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "ilj_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <div class="section1_nav"><i class="icon-calendar-plus-o"></i>일일일정</div>
                <div class="section1_btn">
                    <button id="print_btn" onclick="" class="print_btn">인쇄</button>
                </div>
            </div>
            <div class="section2">
                <div class="section2_line1">
                    <form action="." method="post">
                        <span class="search-box">일자 :&nbsp;
                            <input type="date" id="today" name="today" value="<%= today %>">
                        </span>
                        <span class="select-container">&emsp;일정구분 :&nbsp;
                            <select id="gubun" class="select_cont100">
                                <option value="gubun"><****></option>
                            </select>
                        </span>
                        <span>&emsp;주무부서 :&nbsp;
                            <select id="buseo" class="select_cont100">
                                <option value="buseo"><****></option>
                            </select>
                        </span>
                        <span>&emsp;
                            <input  type="checkbox" id="myiljung">
                            <label for="myiljung">&nbsp;나만의 일정&emsp;</label>
                        </span>
                    </form>                                               
                </div> 
            </div>
            <div id=""  style="height: 611px; border: 1px solid #bcbcbc;">
                <div id="" name="">
                    일일일정 그리드영역
                </div>
            </div>
        </div>
    </div>

<%@ include file = "../../inc_footer.jsp" %>