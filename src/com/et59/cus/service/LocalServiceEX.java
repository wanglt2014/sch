package com.et59.cus.service;

import java.util.List;
import java.util.Map;

import com.et59.cus.domain.entity.TDownload;
import com.et59.cus.domain.entity.TPaper;
import com.et59.cus.domain.entity.TResearch;
import com.et59.cus.domain.entity.TSubject;
import com.et59.cus.domain.entity.TTeacherPaperExample;
import com.et59.cus.domain.entity.TTeacherPaperKey;
import com.et59.cus.domain.entity.TTeacherPrizeKey;
import com.et59.cus.domain.entity.TTeacherResearchExample;
import com.et59.cus.domain.entity.TTeacherResearchKey;
import com.et59.cus.domain.entity.TTeacherSubjectExample;
import com.et59.cus.domain.entity.TTeacherSubjectKey;

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

	/**
	 * 保存资料
	 */
	@SuppressWarnings("rawtypes")
	public Long saveDownloadInfo(TDownload tDownload) throws Exception;

	/**
	 * 修改资料
	 */
	@SuppressWarnings("rawtypes")
	public void updateDownloadInfo(TDownload tDownload) throws Exception;

	/**
	 * 删除资料
	 */
	@SuppressWarnings("rawtypes")
	public void deleteDownloadInfo(long id) throws Exception;

	/**
	 * 保存立项表
	 */
	@SuppressWarnings("rawtypes")
	public Long saveTResearch(TResearch tResearch) throws Exception;

	/**
	 * 保存课程表
	 */
	@SuppressWarnings("rawtypes")
	public Long saveTSubject(TSubject tSubject) throws Exception;

	/**
	 * 保存论文表
	 */
	@SuppressWarnings("rawtypes")
	public Long saveTPaper(TPaper tPaper) throws Exception;

	/**
	 * 保存立项关联表
	 */
	@SuppressWarnings("rawtypes")
	public void saveTTeacherResearchKey(TTeacherResearchKey tTeacherResearchKey)
			throws Exception;

	/**
	 * 保存课程关联表
	 */
	@SuppressWarnings("rawtypes")
	public void saveTTeacherSubjectKey(TTeacherSubjectKey tTeacherSubjectKey)
			throws Exception;

	/**
	 * 保存论文关联表
	 */
	@SuppressWarnings("rawtypes")
	public void saveTTeacherPaperKey(TTeacherPaperKey tTeacherPaperKey)
			throws Exception;

	/**
	 * 保存获奖关联表
	 */
	@SuppressWarnings("rawtypes")
	public void saveTTeacherPrizeKey(TTeacherPrizeKey tTeacherPrizeKey)
			throws Exception;

	/**
	 * 查询论文表
	 */
	@SuppressWarnings("rawtypes")
	public TPaper queryTPaper(Long paperid) throws Exception;

	/**
	 * 查询立项关联表
	 */
	@SuppressWarnings("rawtypes")
	public List queryTTeacherResearchKey(TTeacherResearchExample example)
			throws Exception;

	/**
	 * 查询课程关联表
	 */
	@SuppressWarnings("rawtypes")
	public List queryTTeacherSubjectKey(TTeacherSubjectExample example)
			throws Exception;

	/**
	 * 查询立项表
	 */
	@SuppressWarnings("rawtypes")
	public TResearch queryTResearch(Long researchid) throws Exception;

	/**
	 * 查询论文关联表
	 */
	@SuppressWarnings("rawtypes")
	public List queryTTeacherPaperKey(TTeacherPaperExample example)
			throws Exception;

}
