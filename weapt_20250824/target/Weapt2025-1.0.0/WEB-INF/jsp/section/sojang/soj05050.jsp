<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "soj_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <div class="section1_nav">
                    <i class="icon-star-filled"></i>관리자등록
                </div>
                <div class="section1_btn">
                    <input type="checkbox" id="layer_popup" class="layer_popup">
                    <label for="layer_popup" class="pop_labal popup_btn">추가</label>
                    <!-- 변경 팝업시작--> 
                    <div class="layer_bg">
                        <div class="popup" style="width:620px;">
                            <div class="pop_title">&#10004;관리자등록</div>
                            <form action="." method="post">
                                <div style="padding: 15px;">
                                    <form action="." method="post">
                                    <table id="" >
                                        <tbody>
                                        <tr>
                                            <th style="width: 100px;">관리자코드</th>
                                            <td style="width: 200px;"><input type="text" id="" name="" ></td> <!-- 101부터 증가-->
                                            <th style="width: 100px;">계약일</th>
                                            <td style="width: 200px;"><input type="date" id="" name="" ></td>
                                        </tr>
                                        <tr>
                                            <th>관리그룹</th>
                                            <td>
                                                <select id="" name="">
                                                    <option value="">A</option>
                                                    <option value="">B</option>
                                                    <option value="">C</option>
                                                </select>                                            
                                            </td>
                                            <th>관리자구분</th>
                                            <td>
                                                <select id="" name="">
                                                    <option value="">그룹관리자</option>
                                                    <option value="">관리자</option>
                                                </select>                                            
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>소속전산회사</th>
                                            <td colspan='3'>
                                                <select id="" name="">
                                                    <option value=""><****></option>
                                                </select>                                            
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>관리자ID</th>
                                            <td><input type="text" id="" name="" ></td>
                                            <th>관리자성명</th>
                                            <td><input type="text" id="" name="" ></td>
                                        </tr>
                                        <tr>
                                            <th>비밀번호</th>
                                            <td><input type="text" id="" name="" ></td>
                                            <th>비밀번호확인</th>
                                            <td><input type="text" id="" name="" ></td>
                                        </tr>
                                        <tr>
                                            <th>상태</th>
                                            <td>
                                                <select id="" name="">
                                                    <option value="">정상</option>
                                                    <option value="">해지</option>
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