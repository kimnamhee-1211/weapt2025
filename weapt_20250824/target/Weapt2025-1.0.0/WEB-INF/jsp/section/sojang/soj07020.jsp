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
                        <span class="select-container">&emsp; 그룹 :&nbsp;
                            <select id="" name="" class="select_cont100">
                                <option value="">전체</option>
                                <option value="">책임관리자</option>
                                <option value="">그룹관리자</option>
                                <option value="">관리자</option>
                                <option value="">관리회사</option>
                                <option value="">관리소</option>
                                <option value="">시스템관리자</option>
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