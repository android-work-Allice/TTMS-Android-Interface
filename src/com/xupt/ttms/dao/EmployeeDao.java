package com.xupt.ttms.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.xupt.ttms.vo.EmployeeInfo;

/**
 * @author WangFeng 
 * @date 2017��5��27�� ����10:21:30 
 * @version 1.0 
 */

public interface EmployeeDao {
	
	/**
	 * ��ȡ����Ա����Ϣ
	 * @return 
	 * @throws SQLException
	 */
	List<EmployeeInfo> getEmployeeList() throws SQLException;
	
	/**
	 * ����Ա��Id��ѯԱ����Ϣ
	 * @param empId
	 * @return
	 * @throws SQLException
	 */
	EmployeeInfo getInfoById(Integer empId) throws SQLException;
	
	/**
	 * ���Ա����Ϣ
	 * @param info
	 * @return
	 * @throws SQLException
	 */
	int saveInfo(EmployeeInfo info) throws SQLException;
	
	/**
	 * �޸�Ա����Ϣ
	 * @param info
	 * @return
	 * @throws SQLException
	 */
	int updateInfo(EmployeeInfo info) throws SQLException; 
	int updateInfo1(EmployeeInfo info) throws SQLException; 
	
	/**
	 * ����ɾ��Ա����Ϣ
	 * @param empIds
	 * @return
	 */
	int batchDelete(List empIds) throws SQLException;

	/**
	 * ��ҳ����
	 * @param condation
	 * @return
	 */
	List<EmployeeInfo> search(Map<String, Object> condition) throws SQLException;

	/**
	 * @return
	 */
	int getPageCount(Map<String, Object> condition) throws SQLException;

	/**
	 * �ϴ��ļ�����ʼ���û�ͷ��
	 * @param fileName
	 * @return
	 */
	int savefileName(String fileName) throws SQLException;
	
	/**
	 * Ա���Լ��޸�ͷ��
	 */
	int updateEmpPhoto(Map<String, Object> condition) throws SQLException;

	/**
	 * @param empId
	 * @return 
	 */
	int deleteEmp(Integer empId) throws SQLException;
}
