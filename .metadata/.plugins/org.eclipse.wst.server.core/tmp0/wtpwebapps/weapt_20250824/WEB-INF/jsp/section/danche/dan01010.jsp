<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "dan_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <div class="section1_nav"><i class="icon-user-add"></i>동대표명단</div>
                <div class="section1_btn">
                    <button id="search_btn" onclick="">검색</button>
                    <button id="add_btn" onclick="">취임</button>
                    <button id="closs_btn" onclick="" class="closs_btn">퇴임</button>
                    <button class="print_btn">인쇄</button>
                </div>
            </div>
            <div class="section2">
                <div class="section2_line1">
                    <form action="." method="post">
                        <span>검색조건 :&nbsp;
                        <span class="select-container">
                            <select class="select_cont100">
                                <option value="all">전체</option>
                                <option value="name">성명</option>
                            </select>
                        </span>
                        <span class="search-box">&nbsp;
                                <input class="box_width200" type="text">                   
                        </span>
                    </form>
                </div> 
            </div>
        <div id=""  style="height: 611px; border: 1px solid #bcbcbc;">
            <div id="" name="">
                그리드영역
            </div>
        </div>
    </div>

</html>