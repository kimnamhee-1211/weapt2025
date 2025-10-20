<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "ilb_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-chart-bar"></i>부서/직책등록</span>
                <span class="section1_nav_mic">&emsp;
                    <i class="icon-mic"></i>부서와 직책의 사용필드에 체크 저장하면 사용 할 수 있습니다 (만약 부서 직책이 추가로 필요하면 전산회사에 요청하십시오.) 
                </span>
            </div>
            <div class="section2">
                <div class="section2_line0">
                
                </div> 
            </div>
            <div id="" class="gridcont_left_535">
                <div class="section_middle_title">
                    <form action="." method="post">
                        <span>&#9726&nbsp;부서 :&nbsp;                
                        </span>                       
                        <span class="search-box">&nbsp;                             
                            <input type="text" id="" class="box_width100">                   
                        </span>                        
                        <span class="section_middle_btn">
                            <button id="search_btn" onclick="">검색</button>
                            <button id="save_btn" onclick="">저장</button>
                        </span>
                    </form>
                </div>
                <div style="height: 611px; border: 1px solid #bcbcbc;">
                    그리드 영역 - 사용 | No | 등록일 | 부서
                </div>
            </div>
            <div id="" class="gridcont_right_535">
                <div class="section_middle_title">
                    <form action="." method="post">
                        <span>&#9726&nbsp;직책 :&nbsp;                
                        </span>                        
                        <span class="search-box">&nbsp;                             
                            <input type="text" id="" class="box_width100">                   
                        </span>                        
                        <span class="section_middle_btn">
                            <button id="search_btn" onclick="">검색</button>
                            <button id="save_btn" onclick="">저장</button>
                        </span>
                    </form>
                </div>
                <div style="height: 611px; border: 1px solid #bcbcbc;">
                    그리드 영역 - 사용 | No | 등록일 | 직책
                </div>
            </div>           
        </div>
    </div>

<%@ include file = "../../inc_footer.jsp" %>