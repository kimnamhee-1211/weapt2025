package egovframework.com.baseCrud.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import egovframework.com.login.model.LoginVO;



public interface BaseCrudService {
	
	public List<Map<String, Object>> selectList(String sectionId, String component, Map<String, Object> param);

	public Map<String, Object> selectOne(String sectionId, String component,  Map<String, Object> param, String mapKey);

	public int insertList(String sectionId, String component, List<Map<String, Object>> param);

	public int insertOne(String sectionId, String component,  Map<String, Object> param);

	public int updateList(String sectionId, String component, List<Map<String, Object>> param);

	public int updateOne(String sectionId, String component,  Map<String, Object> param);

	public int deleteList(String sectionId, String component, List<Map<String, Object>> param);

	public int deleteOne(String sectionId, String component,  Map<String, Object> param);
	
	public int saveList(String sectionId, String component, Map<String, Object> param, LoginVO loginUser);

	public  List<Map<String, Object>> getCode(String CODEDV_NO);

	public List<Map<String, Object>> getSelectOption(String sectionId, String component, Map<String, Object> param);
}
