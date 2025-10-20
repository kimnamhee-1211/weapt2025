<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "hae_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-home"></i>기안문서</span> <%-- 메뉴클릭시 바로 검색됨--%>
                <div class="section1_btn"> 
                    <button id="write_btn" onclick=""><a href="hae01010write.jsp">작성</a></button>
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
            
            <div style="height: 566px; border: 1px solid #bcbcbc;">
                <div id="" name="">
                    No | 문서번호 | 기안일 | 제목 | 기안자 | 결제현황 | 지시사항  -- 제목 끝에 첨부파일 있다는 표시  <i class="icon-floppy"></i>
                </div>
            </div>
            <%-- 총 15 줄 (정도) 페이지 넘어가면  페이지 표시  1~10 10개씩 앞뒤로 넘기기   --%>
            <div id="" class="pagination">
                <a href="?page=1">&laquo;</a>
                <a href="?page=1" class="active">1</a>
                <a href="?page=2">2</a>
                <a href="?page=3">3</a>
                <a href="?page=4">4</a>
                <a href="?page=5">5</a>
                <a href="?page=6">6</a>
                <a href="?page=7">7</a>
                <a href="?page=8">8</a>
                <a href="?page=9">9</a>
                <a href="?page=10" >10</a>
                <a href="?page=11">&raquo;</a>
            </div>     
        </div>
    </div>

<%@ include file = "../../inc_footer.jsp" %>