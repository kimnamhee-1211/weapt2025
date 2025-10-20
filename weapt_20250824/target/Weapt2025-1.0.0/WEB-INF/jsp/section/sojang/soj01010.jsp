<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "soj_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <div class="section1_nav">
                    <i class="icon-star-filled"></i>관리업무마감
                </div>
                <div class="section1_btn">
                    <button id="end_btn" onclick="">마감</button>
                </div>
            </div>
            <div class="section2">
                <div class="section2_line1">
                    <form action="." method="post">
                        <span id="">종전마감일 :&nbsp;
                            <****>&emsp;  <!--최종마가일표시 or 이전마감일이 없습니다.-->                      
                        </span>
                        <span>금차마감일 :&nbsp;
                            <input type="date" id="yesterday" value="<%= yesterday %>">                       
                        </span>
                    </form>
                </div> 
            </div>
            <div id="tip_mic">
                <i class="icon-mic"></i>소장님 퇴사 전 마감(퇴사일 전일 또는 전전일 적정) 마감 하시기 바랍니다.<br>
                <i class="icon-mic"></i>마감일 후에는 마감일 이전 업무를 수정, 삭제할 수 없습니다.<br>
                <i class="icon-mic"></i>마감해제가 필요하면 전산회사에 문의하십시오.<br>
                <i class="icon-mic"></i>요청하신 마감해제는 종전 마감일 이후 일자로 해제됩니다.
            </div>
        </div>       
    </div>
    
<%@ include file = "../../inc_footer.jsp" %>