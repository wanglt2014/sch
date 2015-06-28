package com.et59.cus.service;

import java.util.List;
import java.util.Map;

import com.et59.cus.domain.entity.TDepartment;
import com.et59.cus.domain.entity.TDepartmentWithBLOBs;
import com.et59.cus.domain.entity.TDownload;
import com.et59.cus.domain.entity.TPaper;
import com.et59.cus.domain.entity.TPaperExample;
import com.et59.cus.domain.entity.TPrize;
import com.et59.cus.domain.entity.TPrizeExample;
import com.et59.cus.domain.entity.TResearch;
import com.et59.cus.domain.entity.TResearchExample;
import com.et59.cus.domain.entity.TSubject;
import com.et59.cus.domain.entity.TSubjectExample;
import com.et59.cus.domain.entity.TTeacherPaperExample;
import com.et59.cus.domain.entity.TTeacherPaperKey;
import com.et59.cus.domain.entity.TTeacherPrizeExample;
import com.et59.cus.domain.entity.TTeacherPrizeKey;
import com.et59.cus.domain.entity.TTeacherResearchExample;
import com.et59.cus.domain.entity.TTeacherResearchKey;
import com.et59.cus.domain.entity.TTeacherSubjectExample;
import com.et59.cus.domain.entity.TTeacherSubjectKey;
import com.et59.cus.domain.entity.TTrainingplan;
import com.et59.cus.domain.entity.TTrainingplanExample;
import com.et59.cus.domain.entity.TWork;
import com.et59.cus.domain.entity.TWorkExample;
import com.et59.cus.domain.entity.ex.Pager;

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
	public TResearch queryTResearch(Long researchid) throws Exception;

	/**
	 * 查询论文关联表
	 */
	@SuppressWarnings("rawtypes")
	public List queryTTeacherPaperKey(TTeacherPaperExample example)
			throws Exception;

	/**
	 * 更新立项表
	 */
	public void updateTResearch(TResearch tResearch) throws Exception;

	/**
	 * 更新课程表
	 */
	public void updateTSubject(TSubject tSubject) throws Exception;

	/**
	 * 更新论文表
	 */
	public void updateTPaper(TPaper tPaper) throws Exception;

	/**
	 * 专业查询--（人才培养方案）
	 */
	public Pager queryTDepartmentBypage(TDepartment tDepartment, int pagesize,
			int currentpage) throws Exception;

	/**
	 * 保存专业表
	 */
	public void saveTDepartmentWithBLOBs(
			TDepartmentWithBLOBs tDepartmentWithBLOBs) throws Exception;

	/**
	 * 编辑专业表
	 */
	public void updateTDepartmentWithBLOBs(
			TDepartmentWithBLOBs tDepartmentWithBLOBs) throws Exception;

	/**
	 * 删除专业表
	 */
	public void deleteTDepartment(long id) throws Exception;

	/**
	 * 删除方案表
	 */
	public void deleteTTrainingplan(TTrainingplanExample example)
			throws Exception;

	/**
	 * 查询专业表
	 */
	public TDepartmentWithBLOBs queryTDepartment(long id) throws Exception;

	/**
	 * 保存方案表
	 */
	public void saveTTrainingplan(TTrainingplan tTrainingplan) throws Exception;

	/**
	 * 查询方案表
	 */
	public List<TTrainingplan> queryTTrainingplan(TTrainingplanExample example)
			throws Exception;

	/**
	 * 查询课程表
	 */
	public List<TSubject> queryTSubject(TSubjectExample example)
			throws Exception;

	/**
	 * 保存获奖信息表
	 */
	public Long saveTPrize(TPrize tPrize) throws Exception;
	
	/**
	 * 查询获奖关联表
	 */
	@SuppressWarnings("rawtypes")
	public List queryTTeacherPrizeKey(TTeacherPrizeExample example)
			throws Exception;
	
	/**
	 * 查询获奖表
	 */
	@SuppressWarnings("rawtypes")
	public List queryTPrizeList(TPrizeExample example) throws Exception;
	
	/**
	 * 更新获奖表
	 */
	public void updateTPrize(TPrize tPrize) throws Exception;
	
	/**
	 * 删除获奖表
	 */
	public void deleteTPrize(TPrizeExample example)
			throws Exception;
	
	/**
	 * 查询立项表
	 */
	public List<TResearch> queryTResearchList(TResearchExample example) throws Exception;
	
	/**
	 * 查询论文表
	 */
	public List<TPaper> queryTPaperList(TPaperExample example) throws Exception;
	
	/**
	 * 删除立项表
	 */
	public void deleteTResearch(TResearchExample example) throws Exception;
	
	/**
	 * 删除论文表
	 */
	public void deleteTPaper(TPaperExample example) throws Exception;
	
	/**
	 * 删除课程表
	 */
	public void deleteTSubject(TSubjectExample example) throws Exception;
	
	/**
	 * 保存著作信息表
	 */
	public void saveTWork(TWork tWork) throws Exception;
	
	/**
	 * 删除著作表
	 */
	public void deleteTWork(TWorkExample example)throws Exception;
	
	/**
	 * 更新著作表
	 */
	public void updateTWork(TWork tWork) throws Exception;
	
	/**
	 * 查询著作表
	 */
	public List<TWork> queryTWorkList(TWorkExample example) throws Exception;
	
	/**
	 * 查询立项表
	 */
	public Pager queryTResearchBypage(TResearchExample example, int pagesize,
			int currentpage) throws Exception;
	
	/**
	 * 查询论文表
	 */
	public Pager queryTPaperBypage(TPaperExample example, int pagesize,
			int currentpage) throws Exception;
	
	/**
	 * 查询著作表
	 */
	public Pager queryWorkBypage(TWorkExample example, int pagesize,
			int currentpage) throws Exception;
}
