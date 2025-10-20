/**
 * 2025.09
 *
 * 스크립스 작성용 공통 js
 *
 *
 * function btnMaker(search = false, add = false, del = false, save = false, print = false) : 공통버튼 만들기
 * function btnHidden : crud 권한별 공통버튼 제어
 * function selectOptionMaker : 공통코드 select 태그 option 설정
 *
 * --------------------------------------------------
 * function inputDateFormat(obj) : 입력부 text 날짜 포멧
 *
 *
 *
 * ----------------------------------------------------------------
 * function popupOpen(popupTag) : 팝업 열기 이벤트
 * function popupClose(popupTag) : 팝업 닫기 이벤트
 *---------------------------------------------------------------------------------------------------------------
 * function getToday(format) : 오늘 날짜
 *        format : "yyyy-MM-dd", "yyyy/MM/dd", "yyyyMMdd", "yyyy.MM.dd", "kor", "yyyy", "MM", "dd"
 * function isNull(object) : null 체크
 * function dateFormat(obj) : text 날짜 포멧
 *
 */

    function btnMaker({
                          tag = "#section1_btn",
                          grid = 1,
                          search = false,
                          add = false,
                          del = false,
                          save = false,
                          print = false
                      } = {}) {
        let btns = '';

        if (search) {
            btns += `<button id="search_btn${grid}" class="btn_left3" onclick="search_grid${grid}_onclick()">검색</button>`;
        }
        if (add) {
            btns += `<button id="add_btn${grid}" class="btn_left3" onclick="add_grid${grid}_onclick()">추가</button>`;
        }
        if (del) {
            btns += `<button id="delete_btn${grid}" class="btn_left3" onclick="delete_grid${grid}_onclick()">삭제</button>`;
        }
        if (save) {
            btns += `<button id="save_btn${grid}" class="btn_left3"  onclick="save_grid${grid}_onclick()">저장</button>`;
        }
        if (print) {
            btns += `<button id="print_btn${grid}" class="btn_left3" onclick="" class="print_btn">인쇄</button>`;
        }

        const btnTag = document.querySelector(tag);
        if (!btnTag) {
            console.warn(tag + "컨테이너가 없습니다.");
            return;
        }
        btnTag.innerHTML = btns;
    }



    //crud 권한별 버튼 제어
    function btnHidden(data) {
        const btn = {
            GRD_READ: '#search_btn',
            GRD_CREATE: '#add_btn',
            GRD_DELETE: '#delete_btn',
            GRD_UPDATE: '#save_btn',
            GRD_EXCEL: '#print_btn',
        };
        Object.entries(btn).forEach(([key, sel]) => {
            const el = document.querySelector(sel);
            if (el) {
                if (data?.[key] !== "1") {
                    el.hidden = true;
                }
            }
        });
    }

    //공통코드 select 태그 option 설정
    async function selectOptionMaker(CODEDV_NO, selectId, all = false) {
        let selectOptions = await we_getCode(CODEDV_NO);
        if (selectOptions) {
            let select = selectId;
            if (all) {
                select.insertAdjacentHTML("afterbegin", "<option value=''>전체</option>");  //필요시
            }
            selectOptions.forEach(row => {
                select.insertAdjacentHTML("beforeend",
                    `<option value="${row.CODE_NO}">${row.CODEDTL_NM}</option>`);
            })
        }
    }

    //입력부 text 날짜 포멧
    function inputDateFormat(obj){
        let date = obj.value;
        if(!/^[0-9]*$/.test(date)){
            obj.value = "";
            return;
        }
        if(!isNull(date) && date.length == 8){
            date = date.slice(0,4) + '-' + date.slice(4,6) + '-' + date.slice(6);
            obj.value = date;
        }
    }

    //입력부 text 숫자 포멧
    function inputNumFormat(obj){
        let num = obj.value;
        if(!/^[0-9]*$/.test(num)){
            obj.value = "";
            return;
        }
    }

    //입력부 text 전화번호 포멧
    function inputTelFormat(obj){
        let tel = obj.value;
        if(!/^[0-9]*$/.test(tel)){
            obj.value = "";
            return;
        }
        if(!isNull(tel) && tel.length == 9){
            tel = tel.slice(0,2) + '-' + tel.slice(2,5) + '-' + tel.slice(5, 9);
            obj.value = tel;
        }
        if(!isNull(tel) && tel.length == 10){
            if(tel.slice(0,2) == "02"){
                tel = tel.slice(0,2) + '-' + tel.slice(2,6) + '-' + tel.slice(6, 10);
            }else{
                tel = tel.slice(0,3) + '-' + tel.slice(3,6) + '-' + tel.slice(6, 10);
            }
            obj.value = tel;
        }if(!isNull(tel) && tel.length == 11){
            tel = tel.slice(0,3) + '-' + tel.slice(3,7) + '-' + tel.slice(7, 11);
            obj.value = tel;
        }
    }




    //팝업 열기 이벤트
    function popupOpen(popupTag){
        popupTag.style.display = 'block';
    }

    //팝업 닫기 이벤트
    function popupClose(popupTag){
        popupTag.style.display = 'none';
    }

    //날짜 return String
    function getToday(format) {
        const today = new Date();
        const todayYr = today.getFullYear();        // 2025
        const todayMonth = String(today.getMonth() + 1).padStart(2, '0');
        const todayDay = String(today.getDate()).padStart(2, '0');

        switch (format) {
            case "yyyy-MM-dd"    :
                return `${year}-${month}-${day}`;
            case "yyyy/MM/dd"    :
                return `${year}/${month}/${day}`;
            case "yyyyMMdd"        :
                return `${year}${month}${day}`;
            case "yyyy.MM.dd"    :
                return `${year}.${month}.${day}`;
            case "kor"            :
                return `${year}년 ${month}월 ${day}일`;
            case "yyyy"            :
                return `${year}`;
            case "MM"            :
                return `${month}`;
            case "dd"            :
                return `${day}`;
            default                :
                return `${year}-${month}-${day}`;
        }
    }

    //null 체크
    function isNull(object) {
        if(Array.isArray(object)) {
            if (object == null || object.length < 1) return true;
        }else{
            if (object == null || object == undefined || object == '' || object == "") return true;
        }
        return false;
    }

    //text 날짜 포멧
    function dateFormat(obj){
        if(!isNull(obj) && obj.length == 8){
            obj = String(obj);
            obj = obj.slice(0,4) + '-' + obj.slice(4,6) + '-' + obj.slice(6);
            return obj;
        }
    }


    	
    	


  