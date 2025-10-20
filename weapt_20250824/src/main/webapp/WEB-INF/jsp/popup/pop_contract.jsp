<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

                    <div class="layer_bg">
                        <div class="popup" style="width:840px;">
                            <div class="pop_title" style="border:none" >&#10004; &nbsp;계약등록</div>
                            <form action="." method="post">
                                <table style="width:820px;">
                                    <tbody >
                                        <colgroup>
                                            <col style ="width:10%">
                                            <col style ="width:23%">
                                            <col style ="width:10%">
                                            <col style ="width:23%">
                                            <col style ="width:11%">
                                            <col style ="width:23%">
                                        <colgroup>
                                        <tr>
                                            <th>NO.</th>
                                            <td><input type="text" id="" ></td>
                                            <th>계약구분</th>
                                            <td>
                                                <select id="" >
                                                    <option  value="supplier"><****></option> <%-- 공통코드 134--%>
                                                </select>
                                            </td>
                                            <th>계약명</th>
                                            <td><input type="text" id="" ></td>
                                        </tr>
                                        <tr>
                                            <th>계약업체</th>
                                            <td>
                                                <select id="" >
                                                    <option  value="supplier"><****></option> <%-- 등록된업체 선택--%>
                                                </select>
                                            </td>
                                            <th>전화번호</th>
                                            <td><input type="text" id="" ></td>
                                            <th>담당연락처</th>
                                            <td><input type="text" id="" ></td>
                                        </tr>
                                        <tr>
                                            <th>계약일</th>
                                            <td><input type="date" id="today" value="<%= today %>"></td>
                                            <th>시작일</th>
                                            <td><input type="date" id="today" value="<%= today %>"></td>
                                            <th>만기일</th>
                                            <td><input type="date" id="today" value="<%= today %>"></td>
                                        </tr>
                                        <tr>
                                            <th>계약금액</th>
                                            <td><input type="text" id="" ></td>
                                            <th>지불방법</th>
                                            <td><input type="text" id="" ></td>
                                            <th>비고</th>
                                            <td><input type="text" id="" ></td>
         
                                        </tr>
                                        <tr>
                                            <th>해지일</th>
                                            <td><input type="date" id="today" value="<%= today %>"></td>
                                            <th>해지사유</th>
                                            <td colspan='3'><input type="text" id="" ></td>
                                        </tr>
                                        <tr>
                                            <th rowspan="2">보증<br> <input type="checkbox" id="">해당</th>
                                            <td colspan='5'><input type="text" id="" ></td>
                                        </tr>
                                        <tr>
                                            <td colspan='5'><input type="text" id="" ></td>
                                        </tr>
                                        <tr>
                                            <th rowspan="2">분할지급<br> <input type="checkbox" id="">해당</th>
                                            <td colspan='5'><input type="text" id="" ></td>
                                        </tr>
                                        <tr>
                                            <td colspan='5'><input type="text" id="" ></td>
                                        </tr>
                                        
                                    </tbody>
                                </table>
                            </form>

                            <div class="pop_btn">
                                <span id="save_btn" onclick="" class="popup_btn">등록</span>
                                <label for="layer_popup" class="popup_closs_btn">닫기</label>                    
                            </div>
                        </div>
                    </div>