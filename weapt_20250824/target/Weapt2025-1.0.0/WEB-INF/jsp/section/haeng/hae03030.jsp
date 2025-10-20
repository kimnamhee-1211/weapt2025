<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "hae_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <div class="section1_nav"><i class="icon-edit"></i>광고게시문</div>
                <div class="section1_btn">
                    <button id="search_btn" onclick="">검색</button>
                    <input type="checkbox" id="layer_popup" class="layer_popup">
                    <label for="layer_popup" class="pop_labal popup_btn" >작성</label>
                    <%-- 변경 팝업시작--%> 
                    <%@ include file = "../../popup/pop_gwanggo.jsp" %>
                    <%-- 팝업끝--%>
                    <button id="print_btn" onclick="" class="print_btn">인쇄</button>   
                </div>
            </div>
            <div class="section2">
                <div class="section2_line1">
                    <form action="." method="post">
                        <div>
                            <span>게시기간 :&nbsp;
                                <input type="date" id="firstDayOfMonth" value="<%= firstDayOfMonth %>">&nbsp; ~ &nbsp;
                                <input type="date" id="today"  value="<%= today %>"> 
                            </span>                       
                        </div>                        
                    </form>                                               
                </div> 
            </div>
            <div id=""  style="height: 611px; border: 1px solid #bcbcbc;">
                <div id="" name="">
                    no 게시기간 제목 광고주 대표자 연락처 금액 게시장소  -- 하단 합계
                </div>
            </div>
        </div>
    </div>

<%@ include file = "../../inc_footer.jsp" %>