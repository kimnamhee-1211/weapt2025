package egovframework.com.baseCrud.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.*;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.egovframe.rte.psl.dataaccess.EgovAbstractMapper;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import egovframework.com.baseCrud.dao.BaseCrudMapper;
import egovframework.com.login.dao.LoginMapper;
import egovframework.com.login.model.LoginVO;
import static egovframework.com.util.Util.*;


@Service("baseCrudService")
public class BaseCrudServiceImpl implements BaseCrudService{
	
    @Resource(name = "baseCrudMapper")
    private BaseCrudMapper baseCrudMapper;

	
	//다중 검색
	@Override
	@Transactional(readOnly = true)
	public List<Map<String, Object>> selectList(String sectionId, String component, Map<String, Object> param){

		String mapper = sectionId.replaceAll("[^A-Za-z]", "") + "Mapper";
		String methodName = "selectList_" + component;
		String statement = mapper + "." + methodName;

		List<Map<String, Object>> result = baseCrudMapper.selectList(statement, param);
		return result;
	}

	//단일 검색
	@Override
	@Transactional(readOnly = true)
	public Map<String, Object> selectOne(String sectionId, String component, Map<String, Object>param, String mapKey){

		String mapper = sectionId.replaceAll("[^A-Za-z]", "") + "Mapper";
		String methodName = "selectOne_" + component;
		String statement = mapper + "." + methodName;

		Map<String, Object> result = baseCrudMapper.selectOne(statement, param, mapKey);

		return result;
	}

	//다중 저장
	@Override
	public int insertList(String sectionId, String component, List<Map<String, Object>> param){

		String mapper = sectionId.replaceAll("[^A-Za-z]", "") + "Mapper";
		String methodName = "insertList_" + component;
		String statement = mapper + "." + methodName;

		int resultRowCount = baseCrudMapper.insertList(statement, param);

		return resultRowCount;
	}

	//단일 저장
	@Override
	public int insertOne(String sectionId, String component, Map<String, Object> param){

		String mapper = sectionId.replaceAll("[^A-Za-z]", "") + "Mapper";
		String methodName = "insertOne_" + component;
		String statement = mapper + "." + methodName;

		int resultRowCount = baseCrudMapper.insertOne(statement, param);

		return resultRowCount;
	}
	
	//다중 수정
	@Override
	public int updateList(String sectionId, String component, List<Map<String, Object>> param){

		String mapper = sectionId.replaceAll("[^A-Za-z]", "") + "Mapper";
		String methodName = "updateList_" + component;
		String statement = mapper + "." + methodName;

		int resultRowCount = baseCrudMapper.updateList(statement, param);

		return resultRowCount;
	}

	//단일 수정
	@Override
	public int updateOne(String sectionId, String component, Map<String, Object> param){

		String mapper = sectionId.replaceAll("[^A-Za-z]", "") + "Mapper";
		String methodName = "updateOne_" + component;
		String statement = mapper + "." + methodName;

		int resultRowCount = baseCrudMapper.updateOne(statement, param);

		return resultRowCount;
	}


	//다중 삭제
	@Override
	public int deleteList(String sectionId, String component, List<Map<String, Object>> param){

		String mapper = sectionId.replaceAll("[^A-Za-z]", "") + "Mapper";
		String methodName = "deleteList_" + component;
		String statement = mapper + "." + methodName;

		int resultRowCount = baseCrudMapper.deleteList(statement, param);

		return resultRowCount;
	}

	//단일 삭제
	@Override
	public int deleteOne(String sectionId, String component, Map<String, Object> param){

		String mapper = sectionId.replaceAll("[^A-Za-z]", "") + "Mapper";
		String methodName = "deleteOne_" + component;
		String statement = mapper + "." + methodName;

		int resultRowCount = baseCrudMapper.deleteOne(statement, param);

		return resultRowCount;
	}

	//다중 저장 + 수정
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveList(String sectionId, String component, Map<String, Object> param, LoginVO loginUser){

		String mapper = sectionId.replaceAll("[^A-Za-z]", "") + "Mapper";
		String methodName = "";

		List<Map<String, Object>> insertParam = (List<Map<String, Object>>) param.get("insertParam");
		List<Map<String, Object>> updateParam = (List<Map<String, Object>>) param.get("updateParam");
		

		int resultInsertRowCount = 0;
		int resultUpdateRowCount = 0;

		if(insertParam != null && !insertParam.isEmpty()){
			System.out.println(insertParam);

			methodName = "insertList_" + component;
			String statement = mapper + "." + methodName;
			for(Map<String, Object> row : insertParam){
				row.put("userId", loginUser.getUserId());
			}
			resultInsertRowCount = baseCrudMapper.insertList(statement, insertParam);
		}

		if(updateParam != null && !updateParam.isEmpty()){
			System.out.println(updateParam);

			methodName = "updateList_" + component;
			String statement = mapper + "." + methodName;
			for(Map<String, Object> row : updateParam){
				row.put("userId", loginUser.getUserId());
			}
			resultUpdateRowCount = baseCrudMapper.updateList(statement, updateParam);
		}

		if(resultInsertRowCount != insertParam.size() || resultUpdateRowCount != updateParam.size()){
			throw new RuntimeException("insert/update 실패, 롤백 처리");
		}

		int resultRowCount = resultInsertRowCount + resultUpdateRowCount;

		return resultRowCount;
	}

	//공통코드 검색
	@Override
	@Transactional(readOnly = true)
	public List<Map<String, Object>> getCode(String CODEDV_NO){

		List<Map<String, Object>> result = baseCrudMapper.getCode(CODEDV_NO);

		return result;
	}

	//selectOption 검색
	@Override
	@Transactional(readOnly = true)
	public List<Map<String, Object>> getSelectOption(String sectionId, String component, Map<String, Object> param){

		String mapper = sectionId.replaceAll("[^A-Za-z]", "") + "Mapper";
		String methodName = "getSelectOption_" + component;
		String statement = mapper + "." + methodName;

		List<Map<String, Object>> result = baseCrudMapper.getSelectOption(statement, param);
		return result;
	}




	
}





