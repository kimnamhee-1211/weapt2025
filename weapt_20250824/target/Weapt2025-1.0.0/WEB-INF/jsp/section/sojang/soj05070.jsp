<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "soj_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <div class="section1_nav">
                    <i class="icon-star-filled"></i>관리소등록
                </div>               
                <div class="section1_btn">
                    <button id="search_btn" onclick="">검색</button>
                    <input type="checkbox" id="layer_popup" class="layer_popup">
                    <label for="layer_popup" class="pop_labal popup_btn">추가</label>
                    <%-- 추가 팝업시작--%> 
                    <div class="layer_bg">
                        <div class="popup" style="width:980px;">
                            <div class="pop_title">&#10004;관리소등록</div>
                            <div>
                                <span id="">&nbsp;&#9726 기본사항등록           
                                <span class="section_middle_btn">
                                    <button id="save_btn" onclick="">저장</button>
                                    <label for="layer_popup" class="popup_closs_btn">닫기</label>                            
                                </span>
                            </div>

                            <div>
                                <form action="." method="post">
                                <table id="" >
                                    <tbody>
                                    <tr>
                                        <th style="width: 90px;">관리소코드</th>   <%--자동부여 --%>
                                        <td style="width: 150px;"><input type="text" id="" name="" ></td> 
                                        <th style="width: 90px;">등록일</th>
                                        <td style="width: 150px;"><input type="date" id="" name="" ></td>
                                        <th style="width: 90px;">세대수</th>
                                        <td style="width: 150px;"><input type="text" id="" name="" ></td>
                                        <th style="width: 90px;">관리면적</th>
                                        <td style="width: 150px;"><input type="text" id="" name="" ></td>
                                    </tr>
                                    <tr>
                                        <th>*관리소명</th>
                                        <td><input type="text" id="" name="" ></td>
                                        <th>확장명</th>
                                        <td><input type="text" id="" name="" ></td>
                                        <th>상태</th>
                                        <td>
                                            <select id="" name="">
                                                <option value=""><****></option>  <%--공통코드 104 --%>
                                            </select>
                                        </td>
                                        <th>해지일</th>
                                        <td><input type="date" id="" name="" ></td>
                                    </tr>
                                    <tr>
                                        <th>관리소구분</th>
                                        <td>
                                            <select id="" name="">
                                                <option value=""><****></option>  <%--공통코드 102--%> 
                                            </select>
                                        </td>
                                        <th>관리구분</th>
                                        <td>
                                            <select id="" name="">
                                                <option value=""><****></option>  <%--공통코드 103--%> 
                                            </select>
                                        </td>
                                        <th>전화번호</th>
                                        <td><input type="text" id="" name="" ></td>
                                        <th>팩스번호</th>
                                        <td><input type="text" id="" name="" ></td>
                                    </tr>
                                    <tr>
                                        <th rowspan='3'>주소</th>
                                        <td colspan='3' style="text-align: left;"><****> 
                                            <input type="checkbox" id="woono_layer_popup" class="layer_popup">
                                            <label for="woono_layer_popup" class="pop_labal">[우편번호찾기]</label>
                                            <!-- 팝업시작-->
                                            <%@ include file = "../../popup/pop_woo_no.jsp" %>
                                            <%-- 팝업 끝.--%>                         
                                        </td>
                                        <th>관리회사</th>
                                        <td colspan='3'><select id="" name="">
                                                <option value=""><****></option> <%--등록된 관리회사 선택--%>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan='3'><input type="" id="" name="" ></td>  <%--주소1--%>                                      
                                        <th>관리자</th>
                                        <td colspan='3'>
                                            <select id="" name="">
                                                <option value=""><****></option> <%--등록된 관리자 선택--%>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan='3'><input type="" id="" name="" ></td><%--주소2--%>      
                                        <th>단지이메일</th>    
                                        <td colspan='3'><input type="" id="" name="" ></td>
                                    </tr>                                    
                                    </tbody>
                                </table>
                                </form>
                            </div>
                            <div>
                                <span id="">&nbsp;&#9726 계약사항등록
                                <span class="section_middle_btn">
                                    <button id="add_btn" onclick="">추가</button>
                                    <button id="save_btn" onclick="">저장</button>
                                    <button id="del_btn" onclick="">삭제</button>
                                </span>
                            </div>
                            <div id=""  style="height: 400px; border: 1px solid #bcbcbc;">
                                <div id="" name="">
                                    계약사항등록 그리드영역
                                </div>
                            </div>
                        </div>
                    </div>
                    <%-- 팝업끝--%>
                    <button id="print_btn" onclick="" class="print_btn">인쇄</button>    
                </div>
            </div>
            <div class="section2">
                <div class="section2_line1">
                    <form action="." method="post">
                        <span class="select-container">관리소상태 :&nbsp;
                            <select id="" name="" class="select_cont100">
                                <option value="">전체</option>
                                <option value=""><***></option>   <!--공통코드 104 -->
                            </select>
                        </span>
                        <span class="select-container">&emsp;계약유형 :&nbsp;
                            <select id="" name="" class="select_cont100">
                                <option value="">전체</option>
                                <option value=""><****></option> <!--구분코드 129관리소계약구분-->
                            </select>
                        </span>
                        <span class="search-box">&emsp;계약만료일 :&nbsp;
                            <input class="search-txt100" type="date" id="">&nbsp;~&nbsp;
                            <input class="search-txt100" type="date" id="currentDate">                         
                        </span>
                    </form>
                </div>
            </div>
            <div id=""  style="height: 652px; border: 1px solid #bcbcbc;">
                <div id="" name="">
                    관리소등록 그리드영역 - 클릭으로 등록된 팝업창 보여짐
                </div>
            </div>
        </div>
    </div>
<%@ include file = "../../inc_footer.jsp" %>