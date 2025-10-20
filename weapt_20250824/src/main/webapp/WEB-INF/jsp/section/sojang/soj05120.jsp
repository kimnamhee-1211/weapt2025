<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "soj_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <span class="section1_nav"><i class="icon-star-filled"></i>수정사항</span>
                <div class="section1_btn" id="section1_btn"></div>
                <button class="btn_left3" onclick="add_grid1_onclick();">작성</button>
                <!-- 변경 팝업시작-->
                <%@ include file = "../../popup/pop_write.jsp" %>
            </div>
            <!-- 팝업끝-->
            <div class="section2">
                <div class="section2_line1">
                    <span>검색조건 :&nbsp;
                        <select id="search_what" class="select_cont100">
                            <option value="all">제목+내용</option>
                            <option value="title">제목</option>
                            <option value="memo">내용</option>
                        </select>
                    </span>
                    <span>&nbsp;
                        <input type="text" id="search_text" class="search-txt300">
                    </span>
                </div>
            </div>
            <div id="grid1">
        </div>
    </div>

<script>
    /** 작성 순서
     *
     * 변수 선언 :
     *      pgId, 그리드 컴포넌트, 그리드 컴포넌트 포커스, 입력부 컴포넌트, 팝업 컴포넌트, select 컴포넌트
     * 그리드 설정
     * 그리드 생성
     * 그리드 이벤트 :
     *      체크박스 클릭 시 셀렉트 이벤트, 셀 선택 변경 이벤트, 더블 클릭 시 팝업 오픈 이벤트
     * 팝업 이벤트 : (미사용시 생략)
     * 그리드 조회 함수
     * 그리드 추가 함수    (미사용시 생략)
     * 그리드 저장 함수    (미사용시 생략)
     * 그리드 삭제 함수    (미사용시 생략)
     * 컴포넌트 필수항목 입력 체크    (미사용시 생략)
     * crud 권한 처리 호출 함수
     *
     * 기타
     * 로드 :
     *      기본 crud 버튼 생성
     *      crud 권한 처리 함수 호출
     *      공통코드 가져오기		(미사용시 생략)
     *      그리드 DDL 설정       (미사용시 생략)
     *      (필요 시)그리드 조회 함수 호출    (미사용시 생략)
     *
     */

        //변수 선언
    const pgId = "soj05120";	//프로그램ID
    let grid1;	// 그리드 컴포넌트
    let focus = 0;	//그리드 컴포넌트 포커스
    const write_popup = document.querySelector("#write_popup"); //팝업 컴포넌트
    const search_what = document.querySelector("#search_what"); //select 컴포넌트
    const search_text = document.querySelector("#search_text"); //select 컴포넌트


    //그리드 설정
    const grid1ColumnLayout = [
        { dataField: "BOARD_DIV",
            headerText: "900001",
            dataType: "text",
            width : "10%",
        },
        { dataField: "REGI_DAY",
            headerText: "제목",
            dataType: "text",
            width : "*%",
        },
        { dataField: "COMP_NAME",
            headerText: "첨부파일",
            dataType: "text",
            width : "5%",
        },
        { dataField: "TEL",
            headerText: "작성자",
            dataType: "text",
            width : "15%",
        },
        { dataField: "CEO",
            headerText: "작성일",
            dataType: "text",
            width : "20%",
        },
    ];

    //그리드 생성
    grid1 = AUIGrid.create("#grid1", grid1ColumnLayout,
        Object.assign({}, we_grid_Props,
            {
                editable : false,
            })
    );

    //그리드 이벤트
    //행 클릭 시
    AUIGrid.bind(grid1, "cellDoubleClick", function(event) {
        //그리드-input 태그 바인딩
        gridToInput(grid1, write_popup);
        //팝업 열기 이벤트
        popupOpen(write_popup);
    });


    //팝업 이벤트


    //팝업 닫기 이벤트
    function close_popup_onclick(){
        popupClose(grid1_popup);
    }

    write_popup.addEventListener('change',() => {
        inputToGrid(grid1, write_popup);
    });

    //그리드 조회 함수
    function search_grid1_onclick(){
        //검색데이터
        let selectParam = {
            
        }

        //파라미터
        let selectData = {
            sectionId : sectionId,
            component : pgId + "_grid1",
            param: selectParam,
            mapKey : null  // selectOne일 때 mapKey 등록
        }

        we_select( selectData,{
            successSelect : (data) => {
                //그리드 데이터 세팅
                AUIGrid.setGridData(grid1, data);
                //포커스 : 첫 조회시 첫 행 / 수정 시 수정 행
                AUIGrid.setSelectionByIndex(grid1, focus, 0);
                focus = 0;
            }
        });
    }

    //그리드 추가 함수
    function add_grid1_onclick(){
        // 그리드의 편집 인푸터가 열린 경우 에디팅 완료 상태로 만듬.
        AUIGrid.forceEditingComplete(grid1, null);
        //새행 만들기
        let lastIndex = AUIGrid.getRowCount(grid1) - 1;
        const item = {};

        item.COMP_CODE = String(Number(AUIGrid.getCellValue(grid1, lastIndex, "COMP_CODE")) + 1);
        AUIGrid.addRow(grid1, item, "last");

        //그리드-input 태그 바인딩
        gridToInput(grid1, write_popup);

        //팝업 열기 이벤트
        popupOpen(write_popup);

    }


    //그리드 저장 함수
    function save_grid1_onclick(){
        // 추가된 행 아이템들(배열)
        let addedRowItems = AUIGrid.getAddedRowItems(grid1);
        // 수정된 행 아이템들(배열) : 수정된 필드와 수정안된 필드 모두를 얻음.
        let editedRowItems = AUIGrid.getEditedRowItems(grid1);

        //검증
        let itemCount = addedRowItems.length + editedRowItems.length;
        if(itemCount == 0){
            alert("변경된 항목이 없습니다");
            return;
        }
        if(itemCount > 100){
            alert("변경사항 저장은 최대 100건까지만 가능합니다. (현재 " + itemCount + "건)");
            return;
        }
        if(!confirm("총 " + itemCount + "건의 변경사항을 저장하시겠습니까?")) return;
        if(!requireCheck("SAVE_GRID1")) return;

        //포커스 지정
        gridFocus(grid1, focus);

        //저장 데이터
        let saveParam = {
            insertParam : addedRowItems,
            updateParam : editedRowItems,
        }

        //파라미터
        let saveData  = {
            sectionId : sectionId,
            component : pgId + "_grid1",
            param: saveParam,
        }

        we_save( saveData ,{
            successSave : (data) => {
                if(data == itemCount){
                    //팝업 닫기
                    close_popup_onclick();

                    alert("총 " + data + "건의 변경사항을 저장하였습니다.");
                    search_grid1_onclick()
                }
            }
        });
    }

    //그리드 삭제 함수
    function delete_grid1_onclick(){
        //검증
        const checkedItems = AUIGrid.getCheckedRowItems(grid1);
        let itemCount = checkedItems.length;
        if (itemCount=== 0) {
            alert("체크된 항목이 없습니다");
            return;
        }
        if(itemCount > 100){
            alert("삭제는 최대 100건까지만 가능합니다. (현재 " + itemCount + "건)");
            return;
        }
        let delItemsName = checkedItems.map(row => row.item.COMP_NAME).join(", ");
        if (!confirm( delItemsName + "을/를(총 " + itemCount +"건) 삭제하시겠습니까?")) return;

        //포커스 지정
        focus = (checkedItems[0].rowIndex -1) < 1 ? 0 : (checkedItems[0].rowIndex -1);

        // 체크된 행 삭제 처리
        AUIGrid.removeCheckedRows(grid1);

        // 삭제된 행 아이템들(배열) -> 삭제 데이터
        let deleteParam = AUIGrid.getRemovedItems(grid1);
        //공통 저장 트렌젝션용 데이터
        let deleteData = {
            sectionId :  sectionId,
            component : pgId + "_grid1",
            param : deleteParam,
        }

        we_delete(deleteData,{
            successDelete : (data) => {
                if(itemCount == data) {
                    //팝업 닫기
                    close_popup_onclick();
                    alert("총 " + data + "건을 삭제하였습니다.");
                    search_grid1_onclick();
                }
            }
        });
    }

    //컴포넌트 필수항목 입력 체크
    function requireCheck(require){
        let isValid = true;
        switch(require){
            case "SAVE_GRID1":
                isValid = AUIGrid.validateGridData(grid1, ["COMP_CODE", "COMP_NAME"], "필수 필드는 반드시 값을 직접 입력해야 합니다.");
                break;
        }
        return isValid;
    }

    //crud 권한 처리 함수
    function checkCrudPermission(pgId){
        we_checkCrudPermission(pgId,{
            successPer : (data) => {
                //권한에 따라 버튼 숨김
                btnHidden(data)
            }
        });
    }


    //로드
    window.onload = function() {
        //기본 crud 버튼 생성(검색/추가/저장/삭제/인쇄)
        btnMaker({ tag: "#section1_btn", grid:1, add : true, del : true});
        //crud 권한 처리 함수
        checkCrudPermission(pgId);
        //로드 시 그리드 바로 조회
        search_grid1_onclick();
    };

</script>




<%@ include file = "../../inc_footer.jsp" %>