package egovframework.com.baseCrud;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.com.baseCrud.service.BaseCrudService;
import egovframework.com.login.model.LoginVO;


/**
 * @Class Name : LoginController.java
 * @Description : Login Controller Class
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
public class BaseCrudController {

	@Resource(name = "baseCrudService")
	protected BaseCrudService baseCrudService;

	//다중 검색
	@RequestMapping(value = "/selectList/{sectionId}/{component}", produces="application/json;charset=UTF-8", method = RequestMethod.GET)
	@ResponseBody
	public List<Map<String, Object>> selectList(@PathVariable("sectionId") String sectionId,
										@PathVariable("component") String component,
										@RequestParam Map<String, Object> param){
		List<Map<String, Object>> result = baseCrudService.selectList(sectionId, component, param);

		return result;
	}

	//단일 검색
	@RequestMapping(value = "/selectOne/{sectionId}/{component}", produces="application/json;charset=UTF-8", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> selectOne(@PathVariable("sectionId") String sectionId,
									  @PathVariable("component") String component,
									  @RequestParam Map<String, Object> param,
									  @RequestParam String mapKey){

		Map<String, Object> result = baseCrudService.selectOne(sectionId, component, param, mapKey);

		return result;
	}


	//다중 저장
	@RequestMapping(value = "/insertList/{sectionId}/{component}", method = RequestMethod.POST)
	@ResponseBody
	public int insertList(@PathVariable("sectionId") String sectionId,
					  @PathVariable("component") String component,
					  @RequestBody List<Map<String, Object>> param,
					  HttpSession session){

//		LoginVO loginUser = (LoginVO)session.getAttribute("loginUser");
//
//		for (Map<String, Object> row : param) {
//			row.put("userId", loginUser.getUserId());
//		}

		int resultRowCount = baseCrudService.insertList(sectionId, component, param);

		return resultRowCount ;
	}


	//단일 저장
	@RequestMapping(value = "/insertOne/{sectionId}/{component}", method = RequestMethod.POST)
	@ResponseBody
	public int insertList(@PathVariable("sectionId") String sectionId,
						  @PathVariable("component") String component,
						  @RequestBody Map<String, Object> param,
						  HttpSession session){

//		LoginVO loginUser = (LoginVO)session.getAttribute("loginUser");
//		param.put("userId", loginUser.getUserId());

		int resultRowCount = baseCrudService.insertOne(sectionId, component, param);

		return resultRowCount ;
	}


	//다중 수정
	@RequestMapping(value = "/updateList/{sectionId}/{component}", method = RequestMethod.POST)
	@ResponseBody
	public int updateList(@PathVariable("sectionId") String sectionId,
						  @PathVariable("component") String component,
						  @RequestBody List<Map<String, Object>> param,
						  HttpSession session){

//		LoginVO loginUser = (LoginVO)session.getAttribute("loginUser");
//		for (Map<String, Object> row : param) {
//			row.put("userId", loginUser.getUserId());
//		}

		int resultRowCount = baseCrudService.updateList(sectionId, component, param);

		return resultRowCount ;
	}


	//단일 수정
	@RequestMapping(value = "/updateOne/{sectionId}/{component}", method = RequestMethod.POST)
	@ResponseBody
	public int updateOne(@PathVariable("sectionId") String sectionId,
						  @PathVariable("component") String component,
						  @RequestBody Map<String, Object> param,
						  HttpSession session){

//		LoginVO loginUser = (LoginVO)session.getAttribute("loginUser");
//		param.put("userId", loginUser.getUserId());

		int resultRowCount = baseCrudService.updateOne(sectionId, component, param);

		return resultRowCount ;
	}

	//다중 삭제
	@RequestMapping(value = "/deleteList/{sectionId}/{component}", method = RequestMethod.POST)
	@ResponseBody
	public int deleteList(@PathVariable("sectionId") String sectionId,
						  @PathVariable("component") String component,
						  @RequestBody List<Map<String, Object>> param,
						  HttpSession session){

//		LoginVO loginUser = (LoginVO)session.getAttribute("loginUser");
//		for (Map<String, Object> row : param) {
//			row.put("userId", loginUser.getUserId());
//		}

		int resultRowCount = baseCrudService.deleteList(sectionId, component, param);

		return resultRowCount ;
	}


	//단일 삭제
	@RequestMapping(value = "/deleteOne/{sectionId}/{component}", method = RequestMethod.POST)
	@ResponseBody
	public int deleteOne(@PathVariable("sectionId") String sectionId,
						 @PathVariable("component") String component,
						 @RequestBody Map<String, Object> param,
						 HttpSession session){

//		LoginVO loginUser = (LoginVO)session.getAttribute("loginUser");
//		param.put("userId", loginUser.getUserId());

		int resultRowCount = baseCrudService.deleteOne(sectionId, component, param);

		return resultRowCount ;
	}



	//다중 저장 + 수정
	@RequestMapping(value = "/saveList/{sectionId}/{component}", method = RequestMethod.POST)
	@ResponseBody
	public int saveList(@PathVariable("sectionId") String sectionId,
						  @PathVariable("component") String component,
						  @RequestBody Map<String, Object> param,
						  HttpSession session){

		LoginVO loginUser = (LoginVO)session.getAttribute("loginUser");
		int resultRowCount = baseCrudService.saveList(sectionId, component, param, loginUser);

		return resultRowCount;
	}


	//공통코드 검색
	@RequestMapping(value = "/getCode/{CODEDV_NO}", produces="application/json;charset=UTF-8", method = RequestMethod.GET)
	@ResponseBody
	public List<Map<String, Object>> getCode(@PathVariable("CODEDV_NO") String CODEDV_NO){

		List<Map<String, Object>> result = baseCrudService.getCode(CODEDV_NO);

		return result;
	}



	// selectOption 검색
	@RequestMapping(value = "/getSelectOption/{sectionId}/{component}", produces="application/json;charset=UTF-8", method = RequestMethod.GET)
	@ResponseBody
	public List<Map<String, Object>> getSelectOption(@PathVariable("sectionId") String sectionId,
												@PathVariable("component") String component,
												@RequestParam Map<String, Object> param){

		List<Map<String, Object>> result = baseCrudService.getSelectOption(sectionId, component, param);

		return result;
	}








}



























