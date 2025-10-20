/*
 * Copyright 2011 MOPAS(Ministry of Public Administration and Security).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.com.section.dao;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import egovframework.com.login.model.LoginVO;

/**
 * sojang에 관한 데이터처리 매퍼 클래스
 *
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2025.09.09		김남희          최초생성
 *
 * @author 김남희
 * @since 2025.09.09
 * @version 1.0
 * @see
 *
 * </pre>
 */
@Mapper("sojangMapper")
public interface SojangMapper {

	/**
	 * loginUser를 조회한다.
	 * @param vo - 조회할 정보가 담긴 LoginVO
	 * @return loginUser
	 * @exception Exception
	 */
	LoginVO selectListSoj07010(LoginVO vo) throws Exception;



}
