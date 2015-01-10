package com.et59.cus.service;

import java.util.Map;

import com.et59.cus.domain.entity.TDownload;
import com.et59.cus.domain.entity.TSubject;

/**
 * <p>
 * Title: LocalService.java
 * </p>
 * <p>
 * Description:
 * </p>
 *
 */
public interface LocalServiceEX {
	// 资料下载
	@SuppressWarnings("rawtypes")
	public Map queryDownloadInfoForLimit(TDownload download, int pagesize,
			int currentpage) throws Exception;

	/**
	 * 查询资料byid
	 */
	@SuppressWarnings("rawtypes")
	public TDownload queryDownloadById(long id) throws Exception;

	/**
	 * 查询课程列表
	 */
	@SuppressWarnings("rawtypes")
	public Map querySubjectForLimit(TSubject subject, int pagesize,
			int currentpage) throws Exception;

	/**
	 * 查询课程byid
	 */
	@SuppressWarnings("rawtypes")
	public TSubject querySubjectById(long id) throws Exception;
}
