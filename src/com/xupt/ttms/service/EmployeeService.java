package com.xupt.ttms.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.xupt.ttms.vo.EmployeeInfo;

/**
 * @author WangFeng 
 * @date 2017��5��27�� ����3:53:09 
 * @version 1.0 
 */
public interface EmployeeService {
	
	/**
	 * ��ȡ����Ա����Ϣ
	 * @return 
	 * @throws SQLException
	 */
	List<EmployeeInfo> getEmployeeList();
	
	/**
	 * ����Ա��Id��ѯԱ����Ϣ
	 * @param empId
	 * @return
	 * @throws SQLException
	 */
	EmployeeInfo getInfoById(Integer empId);
	
	/**
	 * ���Ա����Ϣ
	 * @param info
	 * @return
	 * @throws SQLException
	 */
	int saveInfo(EmployeeInfo info);
	
	/**
	 * �޸�Ա����Ϣ
	 * @param info
	 * @return
	 * @throws SQLException
	 */
	int updateInfo(EmployeeInfo info); 
	int updateInfo1(EmployeeInfo info); 
	
	/**
	 * ����ɾ��Ա����Ϣ
	 * @param empIds
	 * @return
	 */
	int batchDelete(List empIds);

	/**
	 * ��ҳ��ѯ
	 * @param condation
	 * @param i
	 * @return
	 */
	List<EmployeeInfo> search(Map<String, Object> condation, int pageNum);

	/**
	 * ��ȡ��ҳ��
	 * @param condation 
	 * @return
	 */
	int getPageCount(Map<String, Object> condation);

	/**
	 * @param fileName
	 */
	int savaFileName(String fileName);

	/**
	 * @param empId
	 * @return
	 */
	int deleteEmp(Integer empId);
}
