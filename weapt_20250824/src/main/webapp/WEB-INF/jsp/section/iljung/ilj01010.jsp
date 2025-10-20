<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "ilj_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-calendar-plus-o"></i>월간일정 </span>
                <span class="section1_nav_mic">&emsp;
                    <i class="icon-mic"></i>일자(숫자)를 클릭하면 일정등록을 할 수 있습니다.  
                </span>
                <span class="section1_btn">                 
                    <button id="print_btn" onclick="" class="print_btn">인쇄</button>
                </span>
            </div>
            <div class="section2">
                <div class="section2_line1">
                    <form action="." method="post">
                        <span>년월 :&nbsp;
                            <input type="month" id="yearMonth" name="" value="<%= yearMonth %>">                      
                        </span>
                        <span>&emsp;일정구분 :&nbsp;
                            <select id="gubun" class="select_cont100">   <!-- 구분설정에서 설정된-->
                                <option value="gubun"><****></option>
                            </select>
                        </span>
                        <span>&emsp;주무부서 :&nbsp;
                            <select id="buseo" class="select_cont100">  <!-- 선택된 부서-->
                                <option value="buseo"><****></option>
                            </select>
                        </span>
                        <span>&emsp;
                            <input  type="checkbox" id="gubunshow" name="">
                            <label for="gubunshow">&nbsp;구분보이기&emsp;</label>                        
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
                    달력 - jsp로 개발됨(정철희)
                </div>
            </div>    
        </div>       
    </div>
    
<%@ include file = "../../inc_footer.jsp" %>