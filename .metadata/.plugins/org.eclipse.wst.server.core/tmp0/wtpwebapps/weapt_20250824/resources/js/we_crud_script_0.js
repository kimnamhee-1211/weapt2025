/**
 * 2025.09
 *
 * 데이터 처리용 공통 js
 *
 *
 * async function we_select : 공통 select 함수
 * async function we_insert : 공통 insert 함수
 * async function we_update : 공통 update 함수
 * async function we_delete : 공통 delete 함수
 * async function we_save : 공통 save 함수
 *
 * async function we_checkCrudPermission(pgId, { successPer } = {}, timeout = 60_000) : 프로그램별 crud 권한 데이터 select 함수
 * function btnHidden(data) : crud 권한별 버튼 제어
 * function checkCrudPermission(pgId) : crud 권한 처리 호출 함수
 *
 *
 **/

   //공통 select 함수
   async function we_select(data, { successSelect } = {}, timeout = 60_000) {

      //로딩시작

      const controller = new AbortController();
      const timer = setTimeout(() => controller.abort(), timeout);

      try {
         let url = "";
         let method = "";
         let query = "";
         let mapKey = "";
         const sectionId = encodeURIComponent(data.sectionId);
         const component = encodeURIComponent(data.component);

         if(data.mapKey == null){
            method = "/selectList/";
            query = new URLSearchParams(data.param).toString();
            url = ctx + method  + sectionId + "/" + component + "?" +  query;
         }else{
            method = "/selectOne/";
            query = new URLSearchParams(data.param).toString();
            mapKey =  new URLSearchParams(data.mapKey).toString();
            url = ctx + method  + sectionId + "/" + component + "?" + query + "&" + mapKey;
         }

         const res = await fetch(
             url,
             {
                method: "GET",
                headers: {"Accept": "application/json" },
                credentials: "include",
                signal: controller.signal
             });

         if (!res.ok) throw new Error(`서버 오류: ${res.status}`);

         const json = await res.json();

         if (typeof successSelect === "function") await successSelect(json);

      }catch (err) {
         if (err.name === "AbortError") {
            console.error("요청 타임아웃");
            alert("조회 시간이 초과되었습니다");
         }else{
            console.error(err);
            alert("조회에 실패하였습니다");
         }
         throw err;

      }finally{
         clearTimeout(timer);
         //로딩종료
      }
   }
   /* 사용법
     //그리드 조회
     function select_grid1_onclick(){

         //검색데이터
         let param = {
             menuName : document.querySelector("#menuName").value,
         }

         //파라미터
         let selectData = {
             sectionId :  sectionId,
             component : pgId + "_grid1",
             param: param,
             mapKey : null  // selectOne일 때 mapKey 등록
         }

         we_select( selectData,{
             successSelect : (data) => {
                 //그리드 데이터 세팅
                 AUIGrid.setGridData(grid1, data)
                 //포커스 : 첫 조회시 첫 행 / 수정 시 수정 행
                 AUIGrid.setSelectionByIndex(grid1, grid1_focus);
                 grid1_focus = 0;
             }
         });
     }
   */

   //공통 insert 함수
   async function we_insert(data, { successInsert } = {}, timeout = 60_000){

      //로딩시작

      const controller = new AbortController();
      const timer = setTimeout(() => controller.abort(), timeout);

      try {
         const sectionId = encodeURIComponent(data.sectionId);
         const component = encodeURIComponent(data.component);
         let method = "";

         if(Array.isArray(data.param)){
            method = "/insertList/";
         }else{
            method = "/insertOne/";
         }

         const param = JSON.stringify(data.param)

         const res = await fetch(
             ctx + method + sectionId + "/" + component,
             {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: param,
                signal: controller.signal,
                credentials: 'include'
             });

         if(!res.ok) throw new Error(`서버 오류: ${res.status}`);

         const json = await res.json();
         if (typeof successInsert === "function") await successInsert(json);

      }catch (err) {
         if (err.name === "AbortError") {
            console.error("요청 타임아웃");
            alert("저장 시간이 초과되었습니다");
         }else{
            console.error(err);
            alert("저장에 실패하였습니다");
         }
         throw err;
      }finally{
         clearTimeout(timer);
         //로딩종료
      }
   }

   /* 사용법

   */

   //공통 update 함수
   async function we_update(data, { successUpdate } = {}, timeout = 60_000) {

      //로딩시작

      const controller = new AbortController();
      const timer = setTimeout(() => controller.abort(), timeout);

      try {
         const sectionId = encodeURIComponent(data.sectionId);
         const component = encodeURIComponent(data.component);
         let method = "";

         if(Array.isArray(data.param)){
            method = "/updateList/";
         }else{
            method = "/updateOne/";
         }

         const param = JSON.stringify(data.param)

         const res = await fetch(
             ctx + method + sectionId + "/" + component,
             {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: param,
                signal: controller.signal,
                credentials: 'include'
             });

         if(!res.ok) throw new Error(`서버 오류: ${res.status}`);

         const json = await res.json();
         if (typeof successUpdate === "function") await successUpdate(json);

      }catch (err) {
         if (err.name === "AbortError") {
            console.error("요청 타임아웃");
            alert("저장 시간이 초과되었습니다");
         }else{
            console.error(err);
            alert("저장에 실패하였습니다");
         }
         throw err;
      }finally{
         clearTimeout(timer);
         //로딩종료
      }
   }

   /* 사용법

   */

   //공통 delete 함수
   async function we_delete(data, { successDelete } = {}, timeout = 60_000) {

      //로딩시작

      const controller = new AbortController();
      const timer = setTimeout(() => controller.abort(), timeout);

      try {
         const sectionId = encodeURIComponent(data.sectionId);
         const component = encodeURIComponent(data.component);
         let method = "";

         if(Array.isArray(data.param)){
            method = "/deleteList/";
         }else{
            method = "/deleteOne/";
         }

         const param = JSON.stringify(data.param)

         const res = await fetch(
             ctx + method + sectionId + "/" + component,
             {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: param,
                signal: controller.signal,
                credentials: 'include'
             });

         if(!res.ok) throw new Error(`서버 오류: ${res.status}`);

         const json = await res.json();
         if (typeof successDelete === "function") await successDelete(json);

      }catch (err) {
         if (err.name === "AbortError") {
            console.error("요청 타임아웃");
            alert("삭제에 시간이 초과되었습니다");
         }else{
            console.error(err);
            alert("삭제에 실패하였습니다");
         }
         throw err;
      }finally{
         clearTimeout(timer);
         //로딩종료
      }
   }

   /* 사용법

   */

   //공통 save 함수
   async function we_save(data, { successSave } = {}, timeout = 60_000) {

      //로딩시작
      const controller = new AbortController();
      const timer = setTimeout(() => controller.abort(), timeout);

      try {
         const sectionId = encodeURIComponent(data.sectionId);
         const component = encodeURIComponent(data.component);

         const param =  JSON.stringify(data.param);

         const res = await fetch(
             ctx + "/saveList/" + sectionId + "/" + component,
             {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: param,
                signal: controller.signal,
                credentials: 'include'
             });

         if (!res.ok) throw new Error(`서버 오류: ${res.status}`);

         const json = await res.json();
         if (typeof successSave === "function") await successSave(json);

      }catch (err) {
         if (err.name === "AbortError") {
            console.error("요청 타임아웃");
            alert("저장 시간이 초과되었습니다");
         }else{
            console.error(err);
            alert("저장에 실패하였습니다");
         }
         throw err;
      }finally{
         clearTimeout(timer);
         //로딩종료
      }
   }
   /*사용법
      function save_grid1_onclick(){
         //저장 데이터
         let param = {
             insertParam : addedRowItems,
             updateParam : editedRowItems,
         }

         //파라미터
         let saveData  = {
             sectionId :  sectionId,
             component : pgId + "_grid1",
             param: param,
         }

         we_save( saveData ,{
             successSave : (data) => {
                 if(data == itemCount){
                     alert("총" + data + "건의 변경사항을 저장하였습니다.");
                 }
                 select_grid1_onclick()
             }
         });
      }
    */

   //프로그램별 crud 권한 데이터 select 함수
   async function we_checkCrudPermission(pgId, { successPer } = {}, timeout = 60_000) {

      const controller = new AbortController();
      const timer = setTimeout(() => controller.abort(), timeout);

      try {
         const res = await fetch(
             ctx + "/checkCrudPermission/" + pgId,
             {
                method: "GET",
                headers: {"Accept": "application/json" },
                credentials: "include",
                signal: controller.signal
             });

         if(!res.ok) throw new Error(`서버 오류: ${res.status}`);

         const json = await res.json();

         if (typeof successPer === "function") await successPer(json);

      }catch (err) {
         if (err.name === "AbortError") {
            console.error("요청 타임아웃");
            alert("권한 조회 시간이 초과되었습니다");
         }else{
            console.error(err);
            alert("권한 조회에 실패하였습니다");
         }
         throw err;
      }finally{
         clearTimeout(timer);
      }
   }
   /*사용법

      //crud 권한 처리 호출 함수
      function checkCrudPermission(pgId){
         we_checkCrudPermission(pgId,{
            successPer : (data) => {
               //권한에 따라 버튼 숨김
               btnHidden(data)
            }
         });
      }
    */


   async function we_getCode(CODEDV_NO, timeout = 60_000) {

      const controller = new AbortController();
      const timer = setTimeout(() => controller.abort(), timeout);

      try {
         const res = await fetch(
             ctx + "/getCode/" + CODEDV_NO,
             {
                method: "GET",
                headers: {"Accept": "application/json"},
                credentials: "include",
                signal: controller.signal
             });
   
         if(!res.ok) throw new Error(`서버 오류: ${res.status}`);

         const json = await res.json();
         return json;

      }catch (err) {
         if (err.name === "AbortError") {
            console.error("요청 타임아웃");
            alert("공통코드 조회 시간이 초과되었습니다");
         }else{
            console.error(err);
            alert("공통코드 조회에 실패하였습니다");
         }
         throw err;
      }finally{
         clearTimeout(timer);
      }
   }
   /*사용법
        //공통코드 가져오기
        function getSelectCode(){
            we_getSelectCode(CODEDV_NO, search_usergroupId, false, false);
        }
    */



   // selectOption 함수
   async function we_getSelectOption(data, timeout = 60_000) {

      //로딩시작
      const controller = new AbortController();
      const timer = setTimeout(() => controller.abort(), timeout);

      try {
         let url = "";
         let method = "";
         let query = "";
         const sectionId = encodeURIComponent(data.sectionId);
         const component = encodeURIComponent(data.component);

         method = "/getSelectOption/";
         query = new URLSearchParams(data.param).toString();
         url = ctx + method + sectionId + "/" + component + "?" + query;

         const res = await fetch(
             url,
             {
                method: "GET",
                headers: {"Accept": "application/json" },
                credentials: "include",
                signal: controller.signal
             });

         if (!res.ok) throw new Error(`서버 오류: ${res.status}`);

         const json = await res.json();
         return json;

      }catch (err) {
         if (err.name === "AbortError") {
            console.error("요청 타임아웃");
            alert("조회 시간이 초과되었습니다");
         }else{
            console.error(err);
            alert("조회에 실패하였습니다");
         }
         throw err;

      }finally{
         clearTimeout(timer);
         //로딩종료
      }
   }













  