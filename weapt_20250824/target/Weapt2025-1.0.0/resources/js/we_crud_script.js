/**
 * 2025.09
 *
 * 데이터 처리용 공통 js
 *
 *
 *  async function we_select : 공통 select 함수
 *
 *
 */

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
         const menuId = encodeURIComponent(data.menuId);
         const component = encodeURIComponent(data.component);

         if(data.mapKey == null){
            if(data.param != null){
               method = "/selectList/";
               query = new URLSearchParams(data.param).toString();
               url = ctx + method  + menuId + "/" + component + "?" +  query;
            }else{
               method = "/baseSelectList/";
               url = ctx + method  + menuId + "/" + component;
            }
         }else{
            mapKey =  new URLSearchParams(data.mapKey).toString();
            if(data.param != null){
               method = "/selectOne/";
               query = new URLSearchParams(data.param).toString();
               url = ctx + method  + menuId + "/" + component + "?" + query + "&" + mapKey;
            }else{
               method = "/baseSelectOne/";
               url = ctx + method  + menuId + "/" + component + "?" + mapKey;
            }
         }

         console.log(url)

         const res = await fetch(
             url,
             {
                method: "GET",
                headers: {"Accept": "application/json" },
                credentials: "include",
                signal: controller.signal
             });
         console.log(res.status, res.url);

         if (!res.ok) throw new Error(`서버 오류: ${res.status}`);

         const json = await res.json();
         if (typeof successSelect === "function") await successSelect(json);

      }catch (err) {
         if (err.name === "AbortError") {
            console.error("요청 타임아웃");
            alert("조회 시간이 초과되었습니다");
         }else{
            console.error(err);
            alert("조회에 실패하였습니다")
         }
         throw err;

      }finally{
         clearTimeout(timer);
         //로딩종료
      }
   }
   /* 사용법
      function select_grid1_onclick(){

         let selectData = {
               menuId :  menuId,
               component : pgId + "_" +component,
               param: {},
               mapKey : null
          }

         we_select( selectData,{
            successSelect : (json) => {
               //그리드 데이터 세팅
               AUIGrid.setGridData(myGridID, json)
               //포커싱
            }
         });
      }
   */

   //공통 insert 함수
   async function we_insert(data, { successInsert } = {}, timeout = 5000) {

      //로딩시작

      const controller = new AbortController();
      const timer = setTimeout(() => controller.abort(), timeout);

      try {
         const menuId = encodeURIComponent(data.menuId);
         const component = encodeURIComponent(data.component);
         let method = "";

         if(Array.isArray(data.param)){
            method = "/insertList/";
         }else{
            method = "/insertOne/";
         }

         const param = JSON.stringify(data.param)

         const res = await fetch(
             ctx + method + menuId + "/" + component,
             {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: param,
                signal: controller.signal
             });

         if (!res.ok)throw new Error(`서버 오류: ${res.status}`);

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
      function insert_grid1_onclick(){

         //저장용 컴포넌트
         let insertData = {
            menuId :  menuId,
            component : component,
            param: [],
         }

         we_insert(insertData,{
            successInsert : (json) => {
               const insertRow = insertData.param.length
               if(json == insertRow){
                  alert("저장에 성공하였습니다");
               }else{
                  alert(insertRow + "건 중 " + json + "건 저장에 성공하였습니다");
               }
               //포커싱
               we_select();
            }
         });
      }
   */


   //공통 update 함수
   async function we_update(data, { successUpdate } = {}, timeout = 5000) {

      //로딩시작

      const controller = new AbortController();
      const timer = setTimeout(() => controller.abort(), timeout);

      try {
         const menuId = encodeURIComponent(data.menuId);
         const component = encodeURIComponent(data.component);
         let method = "";

         if(Array.isArray(data.param)){
            method = "/updateList/";
         }else{
            method = "/updateOne/";
         }

         const param = JSON.stringify(data.param)

         const res = await fetch(
             ctx + method + menuId + "/" + component,
             {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: param,
                signal: controller.signal
             });

         if (!res.ok) throw new Error(`서버 오류: ${res.status}`);

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
      function update_grid1_onclick(){

         //저장용 컴포넌트
         let updateData = {
            menuId :  menuId,
            component : component,
            param: [],
         }

         we_update(updateData,{
            successUpdate : (json) => {
               const updateRow = updateData.param.length
               if(json == updateRow){
                  alert("저장에 성공하였습니다");
               }else{
                  alert(updateRow + "건 중 " + json + "건 저장에 성공하였습니다");
               }
               //포커싱
               we_select();
               }
         });
      }
   */



   //공통 insert && update 함수
   async function we_insertUpdateList(data, { successInsertUpdate } = {}, timeout = 5000) {

      //로딩시작
      const controller = new AbortController();
      const timer = setTimeout(() => controller.abort(), timeout);

      try {
         const menuId = encodeURIComponent(data.menuId);
         const component = encodeURIComponent(data.component);
         const param =  JSON.stringify({
                                 insertParam: data.insertParam,
                                 updateParam: data.updateParam,
                              })

         const res = await fetch(
             ctx + "/insertUpdateList/" + menuId + "/" + component,
             {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: param,
                signal: controller.signal
             });

         if (!res.ok) throw new Error(`서버 오류: ${res.status}`);

         const json = await res.json();
         if (typeof successInsertUpdate === "function") await successInsertUpdate(json);

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





  