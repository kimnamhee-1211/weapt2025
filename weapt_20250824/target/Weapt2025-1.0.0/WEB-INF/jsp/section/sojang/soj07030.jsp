<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "soj_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <div class="section1_nav">
                    <i class="icon-star-filled"></i>그룹별메뉴관리
                </div>
                <div class="section1_btn">
                    <button id="search_btn" onclick="">검색</button>
                    <button id="save_btn" onclick="">저장</button>
                </div>
            </div>
            <div class="section2">
                <div class="section2_line1">
                     <form action="." method="post">
                        <span class="select-container">&emsp; 권한그룹 :&nbsp;
                            <select id="" name="" class="select_cont100">
                                <option value="">관리소</option>
                                <option value="">관리회사</option>
                            </select>
                        </span>&emsp;
                        <span class="select-container">&nbsp; 세부권한그룹 :&nbsp;
                            <select id="" name="" class="select_cont100">
                                <option value=""><****></option> <!-- 공통코드 127 관리소세부그룹-->
                                <option value=""><****></option> <!-- 공통코드 128 관리회사세부그룹--> 
                            </select>
                        </span>
                    </form>
                </div> 
            </div>
            <div id=""  style="height: 611px; border: 1px solid #bcbcbc;">
                <div id="" name="">
                    그룹별메뉴관리 그리드
                </div>
            </div>            
        </div>       
    </div>
    
<%@ include file = "../../inc_footer.jsp" %>