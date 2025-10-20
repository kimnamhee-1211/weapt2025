<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "soj_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <div class="section1_nav">
                    <i class="icon-star-filled"></i>전산회사등록
                </div>
                <div class="section1_btn">
                    <input type="checkbox" id="layer_popup" class="layer_popup">
                    <label for="layer_popup" class="pop_labal popup_btn">추가</label>
                    <!-- 변경 팝업시작--> 
                    <div class="layer_bg">
                        <div class="popup" style="width:620px;">
                            <div class="pop_title">&#10004;전산회사등록</div>
                            <form action="." method="post">
                                <div style="padding: 15px;">
                                    <form action="." method="post">
                                    <table id="" >
                                        <tbody>
                                        <tr>
                                            <th style="width: 100px;">전산회사코드</th>
                                            <td style="width: 200px;"><input type="text" id="" name="" ></td> <!-- 101부터 증가-->
                                            <th style="width: 100px;">계약일</th>
                                            <td style="width: 200px;"><input type="date" id="" name="" ></td>
                                        </tr>
                                        <tr>
                                            <th>*상호</th>
                                            <td><input type="text" id="" name="" ></td>
                                            <th>사업자번호</th>
                                            <td><input type="text" id="" name="" ></td>
                                        </tr>
                                        <tr>
                                            <th>대표자</th>
                                            <td><input type="text" id="" name="" ></td>
                                            <th>대표자번호</th>
                                            <td><input type="text" id="" name="" ></td>
                                        </tr>
                                        <tr>
                                            <th>업태</th>
                                            <td><input type="text" id="" name="" ></td>
                                            <th>종목</th>
                                            <td><input type="text" id="" name="" ></td>
                                        </tr>
                                        <tr>
                                            <th rowspan='3'>주소</th>
                                            <td colspan='3'><****>                                             
                                                <input type="checkbox" id="woono_layer_popup" class="layer_popup">
                                                <label for="woono_layer_popup" class="pop_labal">[우편번호찾기]</label>
                                                <!-- 우편번호 팝업시작-->
                                                <div class="layer_bg">
                                                    <div class="popup" style="width: 600px;">
                                                        <div class="pop_title">&#10004; 우편번호검색</div>
                                                        <form action="." method="post">
                                                            <div style="line-height: 50px;">
                                                                <span>&#9726&nbsp;도로명주소 :&nbsp;</span>
                                                                <span><input type="text" id="woono" name="" class="" style="width:300px;"></span>                         
                                                                <span class="section_middle_btn">
                                                                    <button id="search_btn" onclick="">검색</button>&emsp;
                                                                </span>
                                                            </div>
                                                            <div id=""  style="height: 250px; border: 1px solid #bcbcbc;">
                                                                <div id="" name="">
                                                                    우편번호 | 도로명주소 | 지번주소 그리드
                                                                </div>
                                                            </div>
                                                            <div class="pop_btn">
                                                                <button id="save_btn" onclick="">선택</button>
                                                                <label for="woono_layer_popup" class="popup_closs_btn">닫기</label>                    
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                                <!--팝업끝-->                         
                                            </td> 
                                        </tr>
                                        <tr>
                                            <td colspan='3'><input type="" id="" name="" ></td>
                                        </tr>
                                        <tr>    
                                            <td colspan='3'><input type="" id="" name="" ></td>
                                        </tr>
                                        <tr>
                                            <th>전화번호</th>
                                            <td><input type="text" id="" name="" ></td>
                                            <th>팩스번호</th>
                                            <td><input type="text" id="" name="" ></td>
                                        </tr>
                                        <tr>
                                            <th>E-Mail</th>
                                            <td><input type="text" id="" name="" ></td>
                                            <th>홈페이지</th>
                                            <td><input type="text" id="" name="" ></td>
                                        </tr>
                                        <tr>
                                            <th>상태</th>
                                            <td>
                                                <select id="" name="">
                                                    <option value="">정상회사</option>
                                                    <option value="">해지회사</option>
                                                </select>
                                            </td>
                                            <th>해지일</th>
                                            <td><input type="date" id="" name="" ></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    </form>


                                </div>
                            </form>
                            <div class="pop_btn">
                                <button id="save_btn" onclick="">저장</button>
                                <label for="layer_popup" class="popup_closs_btn">닫기</label>                    
                            </div>
                        </div>
                    </div>
                    <!-- 팝업끝-->
                </div>
            </div>
            <div class="section2">
                <div class="section2_line0">
                    
                </div>
            </div>
            <div id=""  style="height: 652px; border: 1px solid #bcbcbc;">
                <div id="" name="">
                    전산회사등록 그리드영역 - 클릭으로 등록된 팝업창 보여짐
                </div>
            </div>
        </div>
    </div>
<%@ include file = "../../inc_footer.jsp" %>