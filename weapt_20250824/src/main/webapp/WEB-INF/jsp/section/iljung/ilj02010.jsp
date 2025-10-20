<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "ilj_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-calendar-plus-o"></i>월중관리계획</span>
                <span class="section1_nav_mic">&emsp;
                    <i class="icon-mic"></i>업무 행을 클릭하여 팝업창에서 수정, 삭제하거나 일정에 등록할 수 있습니다.
                </span>
                <div class="section1_btn">
                    <button id="search_btn" onclick="">검색</button>
                    <button id="add_btn" onclick="">추가</button>                   
                    <button id="print_btn" onclick="" class="print_btn">인쇄</button>
                </div>
            </div>
            <div class="section2">
                <div class="section2_line1">
                    <form action="." method="post">
                        <span>수립기준일 :&nbsp;
                            <select id="standard_day" name="" class="select_cont100">
                                <option value="standard_day"><****></option> <!-- 추가된 수립기준일 선택 최종이 맨위-->
                            </select>                      
                        </span>
                        <span class="select-container">&emsp;해당월 :&nbsp;
                            <select id="" class="select_cont100">
                                <option value="jan">1</option>
                                <option value="feb">2</option>
                                <option value="mar">3</option>
                                <option value="apr">4</option>
                                <option value="may">5</option>
                                <option value="jun">6</option>
                                <option value="jul">7</option>
                                <option value="auo">8</option>
                                <option value="sep">9</option>
                                <option value="oct">10</option>
                                <option value="nov">11</option>
                                <option value="dec">12</option>
                            </select>
                        </span>
                    </form>
                </div> 
            </div>
            <div id=""  style="height: 611px; border: 1px solid #bcbcbc;">
                <div id="" name="">
                    월중관리계획 그리드영역
                </div>
            </div>
        </div>
    </div>

<%@ include file = "../../inc_footer.jsp" %>