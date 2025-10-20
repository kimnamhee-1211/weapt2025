package egovframework.com.cmmn;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @Class Name : MenuController.java
 * @Description : MenuController Class
 * @Modification Information
 * @
 * @  수정일          수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2025.09     김남희        최초생성
 *
 * @author 김남희
 * @since 2025.09
 * @version 1.0
 * @see
 *
 *  Copyright (C) by  All right reserved.
 */

@Controller
public class MenuController {

	@RequestMapping(value = "/goMenu", method = { RequestMethod.GET })
	public String goMenu(@RequestParam("pg") String pg) throws Exception {
				
		return "section/" + pg;
	}

	@RequestMapping(value = "/goPopup/{popup}", method = { RequestMethod.GET, RequestMethod.POST })
	public String goPopup(@PathVariable("popup") String popup) throws Exception {

		return "popup/" + popup;
	}



}
