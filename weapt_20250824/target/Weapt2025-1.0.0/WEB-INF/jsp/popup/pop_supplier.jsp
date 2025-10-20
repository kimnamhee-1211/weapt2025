<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

                    <div class="layer_bg">
                        <div class="popup" style="width:540px;">
                            <div class="pop_title" style="border:none" >&#10004; &nbsp;계약업체등록</div>
                            <form action="." method="post">
                                <table style="width:520px;">
                                    <tbody >
                                        <colgroup>
                                            <col style ="width:20%">
                                            <col style ="width:30%">
                                            <col style ="width:20%">
                                            <col style ="width:30%">
                                        <colgroup>
                                        <tr>
                                            <th>No.</th>
                                            <td ><input type="text" id="" ></td>
                                            <th>등록일</th>
                                            <td><input type="date" id="today" value="<%= today %>"></td>
                                        </tr>
                                        <tr>
                                            <th>상호</th>
                                            <td colspan="3"><input type="text" id="" ></td>
                                        </tr>
                                        <tr>
                                            <th>사업자 NO.</th>
                                            <td><input type="text" id="" ></td>
                                            <th>정상(계약)여부</th>
                                            <td>
                                                <select id="" >
                                                    <option  value="supplier">정상</option>
                                                    <option  value="closs">해지</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>대표자명</th>
                                            <td><input type="text" id="" ></td>
                                            <th>대표자전화</th>
                                            <td><input type="text" id="" ></td>
                                        </tr>
                                        <tr>
                                            <th>전화번호</th>
                                            <td><input type="text" id="" ></td>
                                            <th>팩스</th>
                                            <td><input type="text" id="" ></td>
                                        </tr>
                                        <tr>
                                            <th>업태</th>
                                            <td><input type="text" id="" ></td>
                                            <th>종목</th>
                                            <td><input type="text" id="" ></td>
                                        </tr>
                                        <tr>
                                            <th rowspan='3'>주소</th>
                                            <td colspan='3' style="text-align: left;"><****>                                             
                                                <input type="checkbox" id="woono_layer_popup" class="layer_popup">
                                                <label for="woono_layer_popup" class="pop_labal">[우편번호찾기]</label>
                                                <%-- 팝업시작--%>
                                                <%@ include file = "../../popup/pop_woo_no.jsp" %>
                                                <%-- 팝업 끝.--%>                         
                                            </td>
                                        </tr>
                                        <tr> 
                                            <td colspan='3'><input type="text" id="" > <%--주소1--%> 
                                            </td>                                       
                                        </tr>
                                        <tr> 
                                            <td colspan='3'><input type="text" id="" > <%--주소2--%> 
                                            </td>                                       
                                        </tr>
                                        <tr>
                                            <th>비고</th>
                                            <td colspan='3'><input type="text" id="" > 
                                            </td> 
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
                
                        
   

 
