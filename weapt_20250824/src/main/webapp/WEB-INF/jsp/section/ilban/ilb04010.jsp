<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "ilb_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-chart-bar"></i>근태등록</span>
            </div>

            <div class="section2">
                <div class="section2_line0"><div>
                <div class="gridcont_left_450">
                    <div class="section_middle_title">
                        <span><i class="icon-pause"></i>관리직원선택</span>                
                    </div>
                    <div style="height: 617px; border: 1px solid #bcbcbc;">
                        <div id="" name="" class="">
                            관리직원 그리드영역
                        </div>
                    </div>

                </div>

                <div class="gridcont_right_620">
                    <div class="section_middle_title">
                        <span><i class="icon-pause"></i>근태등록</span>                                    
                        <span class="section_middle_btn">
                        <input type="checkbox"  id=""> 일정관리에 함께 &ensp;                    
                        <button id="search_btn" onclick="">등록</button>
                        </span>
                    </div>
                    <div class="attendance">
                        <form action="." method="post">
                        
                            <div id="person">&emsp;&#9726&nbsp;대 상 자 : <****></div>  <!--직 성명 표현 -->
                            <div>&emsp;&#9726&nbsp;등 록 일 : <input type="date" id="date" ></div>
                            <div>&emsp;&#9726&nbsp;근태구분 :
                                <select id="attendance" name="" class="select_cont100">
                                    <option value="attendance"><****></option>  <!-- 용역근태항목 공통코드 137 -->
                                </select>                                
                            </div>
                            <div>&emsp;&#9726&nbsp;기&emsp;&emsp;간 : 
                                <input type="date" id="st_date">&nbsp; ~ &nbsp;<input type="date" id="end_date"> 
                            </div>
                            <div>&emsp;&#9726&nbsp;사용일수 : <input type="text" id="days" class="search-txt100">
                                &nbsp;(휴일을 제외한 실제사용일수 입력함, 반차인경우 0.5)
                            </div>
                            <div>&emsp;&#9726&nbsp;내&emsp;&emsp;용 : </div>
                            <textarea id="attendance_nemo"></textarea>
                        </form>
                    </div>
                    <div id="tip_mic">
                        <i class="icon-mic"></i>좌측 직원그리드에서 대상자를 클릭하여 해당 직원을 우선 선택합니다. <br>
                        <i class="icon-mic"></i>[등록]하면서 일정관리에 함께 등록할 수 있습니다. <br>
                        <i class="icon-mic"></i>등록 후 수정 삭제는 개인근태조회에서 할 수 있습니다. <br>
                    </div>
                </div> 
            </div>
        </div>
    </div>
</div>
<%@ include file = "../../inc_footer.jsp" %>