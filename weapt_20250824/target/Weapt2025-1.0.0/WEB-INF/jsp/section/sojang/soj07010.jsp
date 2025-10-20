<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file = "../../inc_head.jsp" %>
<%@ include file = "../../inc_nav.jsp" %>
<%@ include file = "soj_nav.jsp" %>

	<div id="section">
		<div class="section1">
	     	<div class="section1_nav">
	         	<i class="icon-star-filled"></i>메뉴관리
	     	</div>
		     <div class="section1_btn">
			    <button id="search_btn" onclick="select_grid1_onclick()">검색</button>
				<button id="add_btn" onclick="">추가</button>
				<button id="save_btn" onclick="">저장</button>
				<button id="print_btn" onclick="" class="print_btn">인쇄</button>
		    </div>
		</div>
		<div class="section2">
		    <div class="section2_line1">
				<span class="search-box">메뉴명 :&nbsp;
					<input type="text" id="menuName" class="search-txt100">
				</span>
		    </div> 
		</div>
		<div id="grid1"></div>   
	</div>       

    <script>

        //변수 설정
        const pgId = "soj07010";

        //CRUD 컴포넌트
        let grid1;
        let grid1_focus;

        //로드 시 실행
        window.onload = function() {

			//그리드 생성
            grid1 = AUIGrid.create("#grid1", grid1ColumnLayout,
                Object.assign({}, we_grid_Props,
                    { showRowNumColumn: false,   }));


			//로드 시 그리드 바로 조회
			select_grid1_onclick();

        };


        //그리드 설정
        const grid1ColumnLayout = [
            { dataField: "menuGroup",
                headerText: "메뉴그룹",
				dataType: "text" },
            { dataField: "menuId",
                headerText: "메뉴ID",
				dataType: "text"  },
            { dataField: "menuName",
                headerText: "메뉴명",
				dataType: "text"  },
            { dataField: "mLevel",
                headerText: "레벨",
				dataType: "text" },
            { dataField: "levelOrder",
                headerText: "레벨순서",
                dataType: "text" },
            { dataField: "upMenuId",
                headerText: "상위메뉴",
				dataType: "text" },
			{ dataField: "formUse",
				headerText: "사용유무",
				headerRenderer : we_cb_HeaderRenderer,
				renderer : we_cb_Renderer
			}
        ];


        //그리드 조회
        function select_grid1_onclick(){

			//검색데이터
			let param = {
				menuName : document.querySelector("#menuName").value,
			}

            //파라미터
            let selectData = {
                menuId :  menuId,
                component : pgId + "_grid1",
                param: param,
                mapKey : null
            }

            we_select( selectData,{
                successSelect : (data) => {
                    //그리드 데이터 세팅
                    AUIGrid.setGridData(grid1, data)

                    if (grid1_focus !==null){
                        AUIGrid.setSelectionByIndex(grid1, 0); // 첫번째 행 선택되도록 지정
                    }else{
                        AUIGrid.setSelectionByIndex(grid1, grid1_focus); // 첫번째 행 선택되도록 지정
                    }
                }
            });
        }


		//그리드 추가
		function insert_grid1_onclick(){

		}









    </script>




    
<%@ include file = "../../inc_footer.jsp" %>