<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "hae_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-edit"></i>공고문</span>
                <div class="section1_btn">
                    <button id="search_btn" onclick="">검색</button>
                    <input type="checkbox" id="layer_popup" class="layer_popup">
                    <label for="layer_popup" class="pop_labal popup_btn" >작성</label>
                    <%-- 변경 팝업시작--%> 
                    <%@ include file = "../../popup/pop_gonggo.jsp" %>
                    <%-- 팝업끝--%>
                    <button id="print_btn" onclick="" class="print_btn">인쇄</button>    
                </div>
            </div>
            <div class="section2">
                <div class="section2_line1">
                    <form action="." method="post">
                        <span>검색조건 :&nbsp;
                            <select id="select" name="" class="select_cont100">
                                <option value="all">전체</option>
                                <option value="more">제목+내용</option>
                                <option value="title">제목</option> 
                                <option value="memo">내용</option> 
                            </select>
                        </span>
                        <span>&nbsp;
                            <input type="" id="" class="search-txt300">                        
                        </span>
                    </form>
                </div>
            </div>
            
            <div style="height: 611px; border: 1px solid #bcbcbc;">
                <div id="" name="">
                    No | 게시기간  제목  게시장소
                </div>
            </div>            
        </div>
    </div>

<%@ include file = "../../inc_footer.jsp" %>