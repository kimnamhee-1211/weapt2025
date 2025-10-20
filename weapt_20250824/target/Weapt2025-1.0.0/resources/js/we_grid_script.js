/**
 * 2025.09
 *
 * 그리드용 공통 js
 *
 *
 * const we_grid_Propst : 표준 그리드 속성
 *
 *
 */


//표준 그리드 속성
   const we_grid_Props = {
      editable: true,                     // 수정가능여부 (true: 가능, false: 불가)
      enableMovingColumn: false,           // 컬럼이동가능여부 (true: 가능, false: 불가)
      applyRestPercentWidth: true,
      headerHeight: 40,                   // 헤더 높이(단위: px)
      rowHeight: 40,                      // 행 높이 (단위: px)
      softRemovePolicy: "exceptNew",
      selectionMode: "singleCell",         // 셀 선택 모드 (singleCell, singleRow, multipleCells, multipleRows, none)
      usePaging: true,                    // 페이징 사용 (true: 사용, false: 미사용)
      pagingMode: "simple",               // 페이징 모드(그리드가 극단적으로 좁은 겨우가 있어서 simple 사용)
      showPageButtonCount: 10,            // 페이징을 사용하는 경우 출력되는 페이지의 버튼 개수
      showPageRowSelect: false,           // 페이징을 사용할 때 1 페이지에 출력할 행의 개수를 변경할 수 있는 select UI 를 하단에 출력할지 여부를 지정합니다.
      pageRowCount: 15,                    // 페이징을 사용하는 경우 한 페이지에 출력되는 행의 수를 지정합니다.
      pagingInfoLabelFunction: function (currentPage, totalPageCount, currentTopNumber, currentBottomNumber, dataLen) {
         return "현재 : " + currentPage + " / 전체 : " + totalPageCount + "( " + currentTopNumber + "~" + currentBottomNumber + " )";
      },
      enableHScrollByWheel : false,
      showRowCheckColumn: true,           // 엑스트라 컬럼의 행 체크박스 출력 여부를 지정합니다.
      rowCheckColumnWidth: 40,            // 엑스트라 행 체크박스 칼럼의 가로 사이즈(width)
      showRowAllCheckBox: true,           // showRowCheckColumn=true시, 헤더 부분에 전체 선택 체크박스를 표시할지 여부를 지정합니다.
      enableRowCheckShiftKey: true,       // 엑스트라 체크박스(showRowCheckColumn)에서 쉬프트키(ShiftKey)를 누른 채 클릭해서 다중 체크하게 할지 여부를 지정합니다.
      isRowAllCheckCurrentView: false,    // 엑스트라 체크박스의 헤더 전체 체크박스 설정/해제가 현재 데이터 기반으로 될지 여부를 지정합니다.
      showRowNumColumn: true,             // 행 줄번호(로우 넘버링) 칼럼의 출력 여부를 지정합니다.
      showTooltip : false,                // 툴팁 출력 지정
      //tooltipSensitivity : 300,         // 툴팁 마우스 오버 후 300ms 이후 출력시킴.
      enableFilter: true,
      onlyEnterKeyEditEnd: false,         // 엔터키가 편집 완료 역할만 할 뿐 다음 행으로 이동하지 않음 - 팝업때문에 행 이동 하면 안 됨
      keepEditing : true,                 // 탭이나 엔터키로 완료할 때 다음 셀 편집가능
      showAutoNoDataMessage : false,      // 데이터가 존재 하지 않을 때 자동으로 메세지를 출력할지 여부
      noDataMessage : "조회된 데이터가 없습니다.",
      wrapSelectionMove: true,            // 칼럼 끝에서 오른쪽 이동 시 다음 행, 처음 칼럼으로 이동할지 여부
      height : 614,                       // autoGridHeight : false 함께 쓰임
      showSelectionBorder : false,        // 셀 선택 시 선택된 셀에 테두리(border) 를 표시할지 여부,
      editingOnKeyDown : false,           // 키보드 입력으로 바로 편집할 수 있는지 여부
      enterKeyColumnBase : true,         // 엔터키가 다음 행이 아닌 다음 컬럼으로 이동함
      rowCheckDependingTree: true         // 트리 그리드에서 엑스트라열 체크 박스를 사용하는 경우, 부모를 체크 할 때 그 자손들도 체크하게 할지 여부를 지정합니다.
   }

   /* 사용법
      Object.assign({}, we_grid_Props, { 개별 그리드 속성 })
    */


//표준 그리드 체크박스 셀 속성
   const we_cb_Renderer = {
      type : "CheckBoxEditRenderer",
      showLabel : false, // 참, 거짓 텍스트 출력여부( 기본값 false )
      editable : true, // 체크박스 편집 활성화 여부(기본값 : false)
      checkValue : "Active", // true, false 인 경우가 기본
      unCheckValue : "Inactive"
   }

   /* 사용법
   그대로 사용시 : we_checkBoxRenderer
   수정시 : Object.assign({}, we_checkBoxRenderer, { 개별 그리드 속성 })
   */

const we_cb_HeaderRenderer = {
   type : "CheckBoxHeaderRenderer",
   // true 설정했을 때 클릭하면 해당 열의 필드(데모 상은 isActive 필드)의 모든 데이터를 true, false 로 자동 바꿈
   dependentMode : true,
   position : "bottom" // 기본값 "bottom"
}





    	
    	


  