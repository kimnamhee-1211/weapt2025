<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "soj_nav.jsp" %>

        <div id="section">
            <div class="section1">
                <div class="section1_nav">
                    <i class="icon-star-filled"></i>관리소현황
                </div>               
                <div class="section1_btn" id="section1_btn">
                </div>
            </div>
            <div class="section2">
                <div class="section2_line1">
                    <form action="." method="post">
                        <span class="select-container">관리소상태 :&nbsp;
                            <select id="search_status" name="STATUS" class="select_cont100">
                            </select>
                        </span>
                        <span class="select-container">&emsp;계약유형 :&nbsp;
                            <select id="search_contKindCd" name="CONT_KIND_CD" class="select_cont100">
                            </select>
                        </span>
                    </form>
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
    const pgId = "soj05080";	//프로그램ID
    let grid1;	// 그리드 컴포넌트
    let focus = 0;	//그리드 컴포넌트 포커스
    const search_status = document.querySelector("#search_status"); //select 컴포넌트
    const search_contKindCd = document.querySelector("#search_contKindCd"); //select 컴포넌트

    //그리드 설정
    const grid1ColumnLayout = [
        { dataField: "OFFICE_CODE",
            headerText: "코드",
            dataType: "text",
            width : "8%",
            editRenderer : {
                type : "InputEditRenderer",
                onlyNumeric : true, // 0~9 까지만 허용
                maxlength : 6,
                validator: function (oldValue, newValue, rowItem, dataField) {
                    if (oldValue != newValue) {
                        // dataField 에서 newValue 값이 유일한 값인지 조사
                        const isValid = AUIGrid.isUniqueValue(grid1, dataField, newValue);
                        // 리턴값은 Object 이며 validate 의 값이 true 라면 패스, false 라면 message 를 띄움
                        return { "validate": isValid, "message": newValue + "는 이미 존재하는 코드 입니다. 다른 코드를 입력해주세요." };
                    }
                }
            },
            editable : false,
        },
        { dataField: "OFFICE_NAME",
            headerText: "관리소명",
            dataType: "text",
            width : "20%",
            editable : false,
            style : "text-align-left",
        },
        { dataField: "PART1",
            headerText: "관리소구분",
            dataType: "text",
            width : "10%",
            renderer: we_DDL_Renderer(false)
        },
        { dataField: "PART2",
            headerText: "관리구분",
            dataType: "text",
            width : "10%",
            renderer: we_DDL_Renderer(false)
        },
        { dataField: "OFFICE_CNT",
            headerText: "세대수",
            dataType: "numeric",
            width : "8%",
            editable : false,
        },
        { dataField: "TEL",
            headerText: "전화번호",
            dataType: "text",
            width : "10%",
            editable : false,
        },
        { dataField: "FAX",
            headerText: "팩스번호",
            dataType: "text",
            width : "10%",
            editable : false,
        },
        { dataField: "ADDR",
            headerText: "주소",
            dataType: "text",
            width : "30%",
            editable : false,
        },
        { dataField: "MAGOR_NAME",
            headerText: "소장명",
            dataType: "text",
            width : "10%",
            editable : false,
        },
        { dataField: "MAJOR_HP",
            headerText: "소장 전화번호",
            dataType: "text",
            width : "10%",
            editable : false,
        },
        { dataField: "COMP_NAME",
            headerText: "관리회사",
            dataType: "text",
            width : "10%",
            editable : false,
        },
        { dataField: "MGMUSER_ID",
            headerText: "관리자",
            dataType: "text",
            width : "10%",
            editable : false,
        },
        { dataField: "OFFICE_HARD_SIZE",
            headerText: "사용기가",
            dataType: "numeric",
            width : "8%",
            editable : false,
        },
        { dataField: "OFFICE_USER_CNT",
            headerText: "사용자수",
            dataType: "numeric",
            width : "8%",
            editable : false,
        },
        { dataField: "STATUS",
            headerText: "상태",
            dataType: "text",
            width : "10%",
            renderer: we_DDL_Renderer(false)
        },
        { dataField: "START_DATE",
            headerText: "계약시작일",
            dataType: "date",
            formatString: "yyyy-mm-dd",
            width : "12%",
            editable : false,
        },
        { dataField: "END_DATE",
            headerText: "계약만료일",
            dataType: "date",
            formatString: "yyyy-mm-dd",
            width : "12%",
            editable : false,
        },
        { dataField: "CONT_KIND_CD",
            headerText: "계약유형",
            dataType: "text",
            width : "15%",
            renderer: we_DDL_Renderer(false)
        },
        { dataField: "CONT_AMT",
            headerText: "계약금액",
            dataType: "numeric",
            width : "10%",
            editable : false,
            formatString : "#,###"
        },
        { dataField: "REV_DATE",
            headerText: "계약해지일",
            dataType: "date",
            formatString: "yyyy-mm-dd",
            width : "12%",
            editable : false,
        },
        { dataField: "REV_REASON",
            headerText: "계약해지이유",
            dataType: "text",
            width : "10%",
            editable : false,
        },
        { dataField: "PLAN_GBN",
            headerText: "조정",
            dataType: "text",
            width : "10%",
            renderer: we_DDL_Renderer(false)
        },
        { dataField: "PLAN_MONTH",
            headerText: "조정년월",
            dataType: "date",
            formatString: "yyyy-mm-dd",
            width : "12%",
            editable : false,
        },
        { dataField: "REPAIR_STATUS",
            headerText: "조정마감상태",
            dataType: "text",
            width : "15%",
            renderer: we_DDL_Renderer(false)
        },
    ];

    //그리드 생성
    grid1 = AUIGrid.create("#grid1", grid1ColumnLayout,
        Object.assign({}, we_grid_Props,
            {
                showRowCheckColumn: false,
                editable : false,
            })
    );

    //그리드 이벤트

    //팝업 이벤트


    //그리드 조회 함수
    function search_grid1_onclick(){
        //검색데이터
        let selectParam = {
            STATUS : search_status.value,
            CONT_KIND_CD : search_contKindCd.value,
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
        btnMaker({ tag: "#section1_btn", grid:1, search : true, print : true});
        //crud 권한 처리 함수
        checkCrudPermission(pgId);
        //공통코드 가져오기
        selectOptionMaker("104", search_status, true);
        selectOptionMaker("129", search_contKindCd, true);

        //그리드 DDL
        gridDdlMaker("102", grid1, "PART1", false);
        gridDdlMaker("103", grid1, "PART2", false);
        gridDdlMaker("104", grid1, "STATUS", false);
        gridDdlMaker("129", grid1, "CONT_KIND_CD", true);
        gridDdlMaker("142", grid1, "PLAN_GBN", true);
        gridDdlMaker("104", grid1, "REPAIR_STATUS", true);
        //로드 시 그리드 바로 조회
        search_grid1_onclick();
    };

</script>



<%@ include file = "../../inc_footer.jsp" %>