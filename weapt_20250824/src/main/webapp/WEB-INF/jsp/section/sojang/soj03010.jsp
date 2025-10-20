<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "soj_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <div class="section1_nav">
                    <i class="icon-star-filled"></i>사용자관리
                </div>
                <div class="section1_btn">                 
                    <button id="search_btn" onclick="">검색</button>
                    <input type="checkbox" id="layer_popup" class="layer_popup">
                    <label for="layer_popup" class="pop_labal popup_btn">추가</label>
                    <!-- 팝업시작-->
                    <div class="layer_bg">
                        <div class="popup" style="width: 600px;">
                            <div class="pop_title">&#10004; 사용자등록</div>                            
                            
                            <form action="." method="post">
                            <div>
                                <span id=""> &#9726&nbsp;사용자ID : <****> </span> <!-- 추가하면 자동계산 생성-->
                            </div>
                            <table id="" style="line-height:40px;">
                            <tbody>
                                <tr>
                                    <th style="width: 150px;">직원선택</th>
                                    <td style="width: 150px;">
                                            <select id="" name="">
                                                <option value=""><****></option>
                                            </select>
                                    </td><th style="width: 150px;">세부그룹</th>
                                    <td style="width: 150px;">
                                            <select id="" name="">
                                                <option value=""><****></option>
                                            </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th style="width: 150px;">비밀번호</th>
                                    <td style="width: 150px;"><input type="password" id="next_pw" name="" class=""></td>  
                                    <th style="width: 150px;">비밀번호 확인</th>
                                    <td style="width: 150px;"><input type="password" id="next_pw2" name="" class=""></td>
                                </tr>
                                <tr>
                                    <th style="width: 150px;">등록일</th>
                                    <td style="width: 150px;">
                                        <input type="date" id="" name="" class="">
                                    </td
                                    ><th style="width: 150px;">ID구분</th>
                                    <td style="width: 150px;">
                                            <select id="" name="">
                                                <option value=""><****></option>
                                            </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th style="width: 150px;">부서</th>
                                    <td style="width: 150px;">
                                            <select id="" name="">
                                                <option value=""><****></option>
                                            </select>
                                    </td><th style="width: 150px;">직책</th>
                                    <td style="width: 150px;">
                                            <select id="" name="">
                                                <option value=""><****></option>
                                            </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th style="width: 150px;">사용자</th>
                                    <td style="width: 150px;"><input type="password" id="text" name="" class=""></td>  
                                    <th style="width: 150px;">휴대전화</th>
                                    <td style="width: 150px;"><input type="password" id="text" name="" class=""></td>
                                </tr>
                                <tr>
                                    <th style="width: 150px;">상태</th>
                                    <td style="width: 150px;">
                                            <select id="" name="">
                                                <option value=""><****></option>
                                            </select>
                                    </td>
                                    <th style="width: 150px;">해지일</th>
                                    <td style="width: 150px;">
                                        <input type="date" id="" name="" class="">
                                    </td>
                                </tr>
                                <tr>
                                    <th style="width: 150px;">비고</th>
                                    <td colspan="3"><input type="text" id="" name="" class=""></td>  
                                </tr>
                            </tbody>
                            </table>
                            </form>
                            <div style="line-height:25px;">
                                <i class="icon-mic"></i>직원선택 후 해당 ID의 비밀번호는 직원의 휴대번호 끝 4자리로 변경되며,<br>
                                <i class="icon-mic"></i>휴대번호가 없을 시 '1234'로 변경됩니다.
                            </div>
                            <div class="pop_btn">
                                <button id="save_btn" onclick="" >저장</button>
                                <label for="layer_popup" class="popup_closs_btn">닫기</label>                    
                            </div>
                        </div>
                    </div>
                    <!-- 팝업끝-->                 
                </div>
            </div>
            <div class="section2">
                <div class="section2_line1">
                    <form action="." method="post">
                        <span id="" class="search-box">관리소명 :&nbsp;
                            <****>                       
                        </span>
                        <span class="select-container">&emsp; 검색조건 :&nbsp;
                        <select id="" name="" class="select_cont70">
                            <option value="">정상</option>
                            <option value="">잠재</option>
                            <option value="">탈퇴</option>
                            <option value="">전체</option>
                        </select>
                        </span>
                    </form>
                </div> 
            </div>
            <div id=""  style="height: 611px; border: 1px solid #bcbcbc;">
                <div id="" name="">
                    사용자관리 그리드영역
                </div>
            </div>                   
        </div>       
    </div>
    
<%@ include file = "../../inc_footer.jsp" %>