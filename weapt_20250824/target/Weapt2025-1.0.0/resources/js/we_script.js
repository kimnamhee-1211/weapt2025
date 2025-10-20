/**
 * 2025.09
 * 
 * 스크립스 작성용 공통 js
 * 
 *
 * function getToday(format) : 오늘 날짜
 *		format : "yyyy-MM-dd", "yyyy/MM/dd", "yyyyMMdd", "yyyy.MM.dd", "kor", "yyyy", "MM", "dd"
 * 
 * 
 */


   //날짜 return String
	function getToday(format){
		const today = new Date();
		const todayYr  = today.getFullYear();        // 2025
		const todayMonth = String(today.getMonth() + 1).padStart(2, '0');
		const todayDay   = String(today.getDate()).padStart(2, '0');
		
		switch (format) {
		    case "yyyy-MM-dd"	: return `${year}-${month}-${day}`;
			case "yyyy/MM/dd"	: return `${year}/${month}/${day}`;
			case "yyyyMMdd"		: return `${year}${month}${day}`;
			case "yyyy.MM.dd"	: return `${year}.${month}.${day}`;
			case "kor"			: return `${year}년 ${month}월 ${day}일`;
			case "yyyy"			: return `${year}`;
			case "MM"			: return `${month}`;
			case "dd"			: return `${day}`;
			default				: return `${year}-${month}-${day}`;
  		}
	}



    	
    	


  