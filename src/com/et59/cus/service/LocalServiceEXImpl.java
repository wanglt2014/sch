package com.et59.cus.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.et59.cus.domain.dao.TAttmeetingDAO;
import com.et59.cus.domain.dao.TAtttrainDAO;
import com.et59.cus.domain.dao.TBookclubDAO;
import com.et59.cus.domain.dao.TDepartmentDAO;
import com.et59.cus.domain.dao.TDownloadDAO;
import com.et59.cus.domain.dao.TForeignExpertsDAO;
import com.et59.cus.domain.dao.THoldmeetingDAO;
import com.et59.cus.domain.dao.THonorandotherDAO;
import com.et59.cus.domain.dao.THonorawardDAO;
import com.et59.cus.domain.dao.TLearnactDAO;
import com.et59.cus.domain.dao.TLearnactDAOImpl;
import com.et59.cus.domain.dao.TPaperDAO;
import com.et59.cus.domain.dao.TPartjobDAO;
import com.et59.cus.domain.dao.TPrizeDAO;
import com.et59.cus.domain.dao.TResearchDAO;
import com.et59.cus.domain.dao.TSocialeventDAO;
import com.et59.cus.domain.dao.TStudentawardDAO;
import com.et59.cus.domain.dao.TSubjectDAO;
import com.et59.cus.domain.dao.TTeacherDAO;
import com.et59.cus.domain.dao.TTeacherPaperDAO;
import com.et59.cus.domain.dao.TTeacherPrizeDAO;
import com.et59.cus.domain.dao.TTeacherResearchDAO;
import com.et59.cus.domain.dao.TTeacherSubjectDAO;
import com.et59.cus.domain.dao.TTrainingplanDAO;
import com.et59.cus.domain.dao.TVisitschoolDAO;
import com.et59.cus.domain.dao.TWorkDAO;
import com.et59.cus.domain.dao.ex.CommonDAOEx;
import com.et59.cus.domain.entity.TAttmeeting;
import com.et59.cus.domain.entity.TAttmeetingExample;
import com.et59.cus.domain.entity.TAtttrain;
import com.et59.cus.domain.entity.TAtttrainExample;
import com.et59.cus.domain.entity.TBookclub;
import com.et59.cus.domain.entity.TBookclubExample;
import com.et59.cus.domain.entity.TDepartment;
import com.et59.cus.domain.entity.TDepartmentExample;
import com.et59.cus.domain.entity.TDepartmentWithBLOBs;
import com.et59.cus.domain.entity.TDownload;
import com.et59.cus.domain.entity.TDownloadExample;
import com.et59.cus.domain.entity.TForeignExperts;
import com.et59.cus.domain.entity.TForeignExpertsExample;
import com.et59.cus.domain.entity.THoldmeeting;
import com.et59.cus.domain.entity.THoldmeetingExample;
import com.et59.cus.domain.entity.THonorandother;
import com.et59.cus.domain.entity.THonorandotherExample;
import com.et59.cus.domain.entity.THonoraward;
import com.et59.cus.domain.entity.THonorawardExample;
import com.et59.cus.domain.entity.TLearnact;
import com.et59.cus.domain.entity.TLearnactExample;
import com.et59.cus.domain.entity.TPaper;
import com.et59.cus.domain.entity.TPaperExample;
import com.et59.cus.domain.entity.TPartjob;
import com.et59.cus.domain.entity.TPartjobExample;
import com.et59.cus.domain.entity.TPrize;
import com.et59.cus.domain.entity.TPrizeExample;
import com.et59.cus.domain.entity.TResearch;
import com.et59.cus.domain.entity.TResearchExample;
import com.et59.cus.domain.entity.TSocialevent;
import com.et59.cus.domain.entity.TSocialeventExample;
import com.et59.cus.domain.entity.TStudentaward;
import com.et59.cus.domain.entity.TStudentawardExample;
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
import com.et59.cus.domain.entity.TVisitschool;
import com.et59.cus.domain.entity.TVisitschoolExample;
import com.et59.cus.domain.entity.TWork;
import com.et59.cus.domain.entity.TWorkExample;
import com.et59.cus.domain.entity.ex.Pager;
import com.et59.cus.tools.ComonUtil;
import com.et59.cus.tools.Constant;

/**
 * <p>
 * Title: LocalServiceEXImpl.java
 * </p>
 * <p>
 * Description:
 * </p>
 * 
 */
public class LocalServiceEXImpl implements LocalServiceEX {
	Logger log = Logger.getLogger(LocalServiceEXImpl.class);

	@Autowired
	private TDownloadDAO tdownloadDAO;

	@Autowired
	private CommonDAOEx commonDAOEx;

	@Autowired
	private TTeacherDAO tTeacherDAO;

	@Autowired
	private TTeacherPaperDAO tTeacherPaperDAO;
	@Autowired
	private TTeacherPrizeDAO tTeacherPrizeDAO;
	@Autowired
	private TTeacherResearchDAO tTeacherResearchDAO;
	@Autowired
	private TTeacherSubjectDAO tTeacherSubjectDAO;

	@Autowired
	private TPaperDAO tPaperDAO;
	@Autowired
	private TPrizeDAO tPrizeDAO;
	@Autowired
	private TResearchDAO tResearchDAO;
	@Autowired
	private TSubjectDAO tSubjectDAO;

	@Autowired
	private TDepartmentDAO tDepartmentDAO;

	@Autowired
	private TTrainingplanDAO tTrainingplanDAO;

	@Autowired
	private TWorkDAO tWorkDAO;

	@Autowired
	private TPartjobDAO tPartjobDAO;

	@Autowired
	private THonorandotherDAO tHonorandotherDAO;

	@Autowired
	private TVisitschoolDAO tVisitschoolDAO;

	@Autowired
	private TAttmeetingDAO tAttmeetingDAO;

	@Autowired
	private TAtttrainDAO tAtttrainDAO;

	@Autowired
	private THoldmeetingDAO tHoldmeetingDAO;

	@Autowired
	private TForeignExpertsDAO tForeignExpertsDAO;

	@Autowired
	private TBookclubDAO tBookclubDAO;

	@Autowired
	private THonorawardDAO tHonorawardDAO;

	@Autowired
	private TLearnactDAO tLearnactDAOImpl;
	
	@Autowired
	private TSocialeventDAO tSocialeventDAO;
	
	@Autowired
	private TStudentawardDAO tStudentawardDAO;
	

	/**
	 * 查询资料下载
	 */
	@Override
	public Map queryDownloadInfoForLimit(TDownload download, int pagesize,
			int currentpage) throws Exception {
		Map map = new HashMap();
		TDownloadExample bae = new TDownloadExample();
		com.et59.cus.domain.entity.TDownloadExample.Criteria criteria = bae
				.createCriteria();
		bae.setOrderByClause(" createdate desc ");
		criteria.andFileisvalidEqualTo(Constant.ISVALID_1);
		if (download.getInfotype() != null
				&& !download.getInfotype().equals("")) {
			criteria.andInfotypeEqualTo(download.getInfotype());
		}

		// if (null != bsUserservice.getOrderIccard()
		// && !bsUserservice.getOrderIccard().equals("")) {
		// criteria.andOrderIccardEqualTo(bsUserservice.getOrderIccard());
		// }
		// if (null != bsUserservice.getUserId()) {
		// criteria.andUserIdEqualTo(bsUserservice.getUserId());
		// }
		int startrecord = (currentpage - 1) * pagesize;
		List<TDownload> list = commonDAOEx.selectTDownloadForPage(bae,
				startrecord, pagesize);
		int totalCount = tdownloadDAO.countByExample(bae);
		map.put(Constant.TOTALCOUNT, totalCount);
		map.put(Constant.TOTALPAGECOUNT,
				ComonUtil.computusTotalPage(totalCount, pagesize));
		map.put(Constant.ACTION_RESULT, Constant.RESULT_SUCCESS);
		map.put(Constant.DOWNLOAD_LIST, list);
		return map;

	}

	/**
	 * 查询资料byid
	 */
	@Override
	public TDownload queryDownloadById(long id) throws Exception {
		TDownload download = new TDownload();
		if (id == 0) {
			throw new Exception("id错误!");
		} else {
			download = tdownloadDAO.selectByPrimaryKey(id);
			if (null != download) {
				if (log.isDebugEnabled()) {
					log.debug("数据库里面存在该资料！");
				}
			} else {
				if (log.isDebugEnabled()) {
					log.debug("数据库里面不存在该资料，校验失败");
				}
			}
		}
		return download;
	}

	/**
	 * 查询课程列表
	 */
	@Override
	public Map querySubjectForLimit(TSubject subject, int pagesize,
			int currentpage) throws Exception {
		Map map = new HashMap();
		TSubjectExample bae = new TSubjectExample();
		com.et59.cus.domain.entity.TSubjectExample.Criteria criteria = bae
				.createCriteria();
		bae.setOrderByClause(" subjectNO desc ");
		criteria.andSubjectisvalidEqualTo(Constant.ISVALID_1);

		if (null != subject.getSubjectname()
				&& !subject.getSubjectname().equals("")) {
			criteria.andSubjectnameLike('%' + subject.getSubjectname() + '%');
		}
		// if (null != bsUserservice.getUserId()) {
		// criteria.andUserIdEqualTo(bsUserservice.getUserId());
		// }
		int startrecord = (currentpage - 1) * pagesize;
		List<TSubject> list = commonDAOEx.selectTSubjectForPage(bae,
				startrecord, pagesize);
		int totalCount = tSubjectDAO.countByExample(bae);
		map.put(Constant.TOTALCOUNT, totalCount);
		map.put(Constant.TOTALPAGECOUNT,
				ComonUtil.computusTotalPage(totalCount, pagesize));
		map.put(Constant.ACTION_RESULT, Constant.RESULT_SUCCESS);
		map.put(Constant.SUBJECT_LIST, list);
		return map;

	}

	/**
	 * 查询课程byid
	 */
	@Override
	public TSubject querySubjectById(long id) throws Exception {
		TSubject subject = new TSubject();
		if (id == 0) {
			throw new Exception("id错误!");
		} else {
			subject = tSubjectDAO.selectByPrimaryKey(id);
			if (null != subject) {
				if (log.isDebugEnabled()) {
					log.debug("数据库里面存在该资料！");
				}
			} else {
				if (log.isDebugEnabled()) {
					log.debug("数据库里面不存在该资料，校验失败");
				}
			}
		}
		return subject;
	}

	/**
	 * 保存资料
	 */
	@Override
	public Long saveDownloadInfo(TDownload tDownload) throws Exception {
		return tdownloadDAO.insert(tDownload);
	}

	/**
	 * 修改资料
	 */
	@Override
	public void updateDownloadInfo(TDownload tDownload) throws Exception {
		tdownloadDAO.updateByPrimaryKeySelective(tDownload);
	}

	/**
	 * 删除资料
	 */
	@Override
	public void deleteDownloadInfo(long id) throws Exception {
		tdownloadDAO.deleteByPrimaryKey(id);
	}

	/**
	 * 保存立项表
	 */
	@Override
	public Long saveTResearch(TResearch tResearch) throws Exception {
		return tResearchDAO.insertReturnId(tResearch);
	}

	/**
	 * 更新立项表
	 */
	@Override
	public void updateTResearch(TResearch tResearch) throws Exception {
		tResearchDAO.updateByPrimaryKeySelective(tResearch);
	}

	/**
	 * 删除立项表
	 */
	@Override
	public void deleteTResearch(TResearchExample example) throws Exception {
		tResearchDAO.deleteByExample(example);
	}

	/**
	 * 保存课程表
	 */
	@Override
	public Long saveTSubject(TSubject tSubject) throws Exception {
		return tSubjectDAO.insertReturnId(tSubject);
	}

	/**
	 * 更新课程表
	 */
	@Override
	public void updateTSubject(TSubject tSubject) throws Exception {
		tSubjectDAO.updateByPrimaryKeySelective(tSubject);
	}

	/**
	 * 删除课程表
	 */
	@Override
	public void deleteTSubject(TSubjectExample example) throws Exception {
		tSubjectDAO.deleteByExample(example);
	}

	/**
	 * 保存论文表
	 */
	@Override
	public Long saveTPaper(TPaper tPaper) throws Exception {
		return tPaperDAO.insertReturnId(tPaper);
	}

	/**
	 * 更新论文表
	 */
	@Override
	public void updateTPaper(TPaper tPaper) throws Exception {
		tPaperDAO.updateByPrimaryKeySelective(tPaper);
	}

	/**
	 * 删除论文表
	 */
	@Override
	public void deleteTPaper(TPaperExample example) throws Exception {
		tPaperDAO.deleteByExample(example);
	}

	/**
	 * 保存获奖信息表
	 */
	@Override
	public Long saveTPrize(TPrize tPrize) throws Exception {
		return tPrizeDAO.insertReturnId(tPrize);
	}

	/**
	 * 保存著作信息表
	 */
	@Override
	public void saveTWork(TWork tWork) throws Exception {
		tWorkDAO.insertSelective(tWork);
	}

	/**
	 * 保存获奖信息表
	 */
	@Override
	public void savePartJob(TPartjob tPartjob) throws Exception {
		tPartjobDAO.insertSelective(tPartjob);
	}

	@Override
	public void deletePartJob(TPartjobExample example) throws Exception {
		tPartjobDAO.deleteByExample(example);
	}

	@Override
	public void saveHonor(THonorandother tHonorandother) throws Exception {
		tHonorandotherDAO.insertSelective(tHonorandother);
	}

	@Override
	public void deleteHonor(THonorandotherExample tHonorandotherExample)
			throws Exception {
		tHonorandotherDAO.deleteByExample(tHonorandotherExample);
	}

	/**
	 * 保存立项关联表
	 */
	@Override
	public void saveTTeacherResearchKey(TTeacherResearchKey tTeacherResearchKey)
			throws Exception {
		tTeacherResearchDAO.insert(tTeacherResearchKey);
	}

	/**
	 * 保存课程关联表
	 */
	@Override
	public void saveTTeacherSubjectKey(TTeacherSubjectKey tTeacherSubjectKey)
			throws Exception {
		tTeacherSubjectDAO.insert(tTeacherSubjectKey);
	}

	/**
	 * 保存论文关联表
	 */
	@Override
	public void saveTTeacherPaperKey(TTeacherPaperKey tTeacherPaperKey)
			throws Exception {
		tTeacherPaperDAO.insert(tTeacherPaperKey);
	}

	/**
	 * 保存获奖关联表
	 */
	@Override
	public void saveTTeacherPrizeKey(TTeacherPrizeKey tTeacherPrizeKey)
			throws Exception {
		tTeacherPrizeDAO.insert(tTeacherPrizeKey);
	}

	/**
	 * 查询课程关联表
	 */
	@Override
	public List queryTTeacherSubjectKey(TTeacherSubjectExample example)
			throws Exception {
		return tTeacherSubjectDAO.selectByExample(example);
	}

	/**
	 * 查询立项关联表
	 */
	@Override
	public List queryTTeacherResearchKey(TTeacherResearchExample example)
			throws Exception {
		return tTeacherResearchDAO.selectByExample(example);
	}

	/**
	 * 查询立项表
	 */
	@Override
	public TResearch queryTResearch(Long researchid) throws Exception {
		return tResearchDAO.selectByPrimaryKey(researchid);
	}

	/**
	 * 查询立项表
	 */
	@Override
	public List<TResearch> queryTResearchList(TResearchExample example)
			throws Exception {
		return tResearchDAO.selectByExample(example);
	}

	/**
	 * 查询立项表
	 */
	@Override
	public Pager queryTResearchBypage(TResearchExample example, int pagesize,
			int currentpage) throws Exception {
		Pager page = new Pager();
		int startrecord = (currentpage - 1) * pagesize;
		List<TResearch> list = commonDAOEx.selectTResearchForPage(example,
				startrecord, pagesize);
		int totalCount = tResearchDAO.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 * 查询论文关联表
	 */
	@Override
	public List queryTTeacherPaperKey(TTeacherPaperExample example)
			throws Exception {
		return tTeacherPaperDAO.selectByExample(example);
	}

	/**
	 * 查询论文表
	 */
	@Override
	public TPaper queryTPaper(Long paperid) throws Exception {
		return tPaperDAO.selectByPrimaryKey(paperid);
	}

	/**
	 * 查询论文表
	 */
	@Override
	public List<TPaper> queryTPaperList(TPaperExample example) throws Exception {
		return tPaperDAO.selectByExample(example);
	}

	/**
	 * 查询论文表
	 */
	@Override
	public Pager queryTPaperBypage(TPaperExample example, int pagesize,
			int currentpage) throws Exception {
		Pager page = new Pager();
		int startrecord = (currentpage - 1) * pagesize;
		List<TPaper> list = commonDAOEx.selectTPaperForPage(example,
				startrecord, pagesize);
		int totalCount = tPaperDAO.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 * 专业查询--（人才培养方案）
	 */
	@Override
	public Pager queryTDepartmentBypage(TDepartment tDepartment, int pagesize,
			int currentpage) throws Exception {
		Pager page = new Pager();
		TDepartmentExample example = new TDepartmentExample();
		com.et59.cus.domain.entity.TDepartmentExample.Criteria criteria = example
				.createCriteria();
		int startrecord = (currentpage - 1) * pagesize;
		List<TDepartmentWithBLOBs> list = commonDAOEx.selectTDepartmentForPage(
				example, startrecord, pagesize);
		int totalCount = tDepartmentDAO.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 * 保存专业表
	 */
	@Override
	public void saveTDepartmentWithBLOBs(
			TDepartmentWithBLOBs tDepartmentWithBLOBs) throws Exception {
		tDepartmentDAO.insert(tDepartmentWithBLOBs);
	}

	/**
	 * 编辑专业表
	 */
	@Override
	public void updateTDepartmentWithBLOBs(
			TDepartmentWithBLOBs tDepartmentWithBLOBs) throws Exception {
		tDepartmentDAO.updateByPrimaryKeySelective(tDepartmentWithBLOBs);
	}

	/**
	 * 删除专业表
	 */
	@Override
	public void deleteTDepartment(long id) throws Exception {
		tDepartmentDAO.deleteByPrimaryKey(id);
	}

	/**
	 * 查询专业表
	 */
	@Override
	public TDepartmentWithBLOBs queryTDepartment(long id) throws Exception {
		return tDepartmentDAO.selectByPrimaryKey(id);
	}

	/**
	 * 删除方案表
	 */
	@Override
	public void deleteTTrainingplan(TTrainingplanExample example)
			throws Exception {
		tTrainingplanDAO.deleteByExample(example);
	}

	/**
	 * 保存方案表
	 */
	@Override
	public void saveTTrainingplan(TTrainingplan tTrainingplan) throws Exception {
		tTrainingplanDAO.insert(tTrainingplan);
	}

	/**
	 * 查询方案表
	 */
	@Override
	public List<TTrainingplan> queryTTrainingplan(TTrainingplanExample example)
			throws Exception {
		return tTrainingplanDAO.selectByExample(example);
	}

	/**
	 * 查询课程表
	 */
	@Override
	public List<TSubject> queryTSubject(TSubjectExample example)
			throws Exception {
		return tSubjectDAO.selectByExample(example);
	}

	/**
	 * 查询获奖关联表
	 */
	@Override
	public List queryTTeacherPrizeKey(TTeacherPrizeExample example)
			throws Exception {
		return tTeacherPrizeDAO.selectByExample(example);
	}

	/**
	 * 查询获奖表
	 */
	@Override
	public List queryTPrizeList(TPrizeExample example) throws Exception {
		return tPrizeDAO.selectByExample(example);
	}

	/**
	 * 更新获奖表
	 */
	@Override
	public void updateTPrize(TPrize tPrize) throws Exception {
		tPrizeDAO.updateByPrimaryKeySelective(tPrize);
	}

	/**
	 * 删除获奖表
	 */
	@Override
	public void deleteTPrize(TPrizeExample example) throws Exception {
		tPrizeDAO.deleteByExample(example);
	}

	/**
	 * 删除著作表
	 */
	@Override
	public void deleteTWork(TWorkExample example) throws Exception {
		tWorkDAO.deleteByExample(example);
	}

	/**
	 * 更新著作表
	 */
	@Override
	public void updateTWork(TWork tWork) throws Exception {
		tWorkDAO.updateByPrimaryKeySelective(tWork);
	}

	/**
	 * 查询著作表
	 */
	@Override
	public List<TWork> queryTWorkList(TWorkExample example) throws Exception {
		return tWorkDAO.selectByExample(example);
	}

	/**
	 * 查询著作表
	 */
	@Override
	public Pager queryWorkBypage(TWorkExample example, int pagesize,
			int currentpage) throws Exception {
		Pager page = new Pager();
		int startrecord = (currentpage - 1) * pagesize;
		List<TWork> list = commonDAOEx.selectWorkForPage(example, startrecord,
				pagesize);
		int totalCount = tWorkDAO.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 * 查询获奖表
	 */
	@Override
	public Pager queryPrizeBypage(TPrizeExample example, int pagesize,
			int currentpage) throws Exception {
		Pager page = new Pager();
		int startrecord = (currentpage - 1) * pagesize;
		List<TPrize> list = commonDAOEx.selectPrizeForPage(example,
				startrecord, pagesize);
		int totalCount = tPrizeDAO.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 * 查询
	 */
	@Override
	public Pager queryPartJobBypage(TPartjobExample example, int pagesize,
			int currentpage) throws Exception {
		Pager page = new Pager();
		int startrecord = (currentpage - 1) * pagesize;
		List<TPartjob> list = commonDAOEx.selectPartJobForPage(example,
				startrecord, pagesize);
		int totalCount = tPartjobDAO.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 * 查询
	 */
	@Override
	public Pager queryHonorBypage(THonorandotherExample example, int pagesize,
			int currentpage) throws Exception {
		Pager page = new Pager();
		int startrecord = (currentpage - 1) * pagesize;
		List<THonorandother> list = commonDAOEx.selectHonorForPage(example,
				startrecord, pagesize);
		int totalCount = tHonorandotherDAO.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 * 查询
	 */
	@Override
	public Pager queryVisitSchoolBypage(TVisitschoolExample example,
			int pagesize, int currentpage) throws Exception {
		Pager page = new Pager();
		int startrecord = (currentpage - 1) * pagesize;
		List<TVisitschool> list = commonDAOEx.selectVisitSchoolForPage(example,
				startrecord, pagesize);
		int totalCount = tVisitschoolDAO.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 */
	@Override
	public void saveTVisitschool(TVisitschool tVisitschool) throws Exception {
		tVisitschoolDAO.insertSelective(tVisitschool);
	}

	/**
	 * 删除
	 */
	@Override
	public void deleteTVisitschool(TVisitschoolExample example)
			throws Exception {
		tVisitschoolDAO.deleteByExample(example);
	}

	/**
	 * 查询
	 */
	@Override
	public Pager queryAttMeetingBypage(TAttmeetingExample example,
			int pagesize, int currentpage) throws Exception {
		Pager page = new Pager();
		int startrecord = (currentpage - 1) * pagesize;
		List<TAttmeeting> list = commonDAOEx.selectAttMeetingForPage(example,
				startrecord, pagesize);
		int totalCount = tAttmeetingDAO.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 */
	@Override
	public void saveAttMeeting(TAttmeeting tAttmeeting) throws Exception {
		tAttmeetingDAO.insertSelective(tAttmeeting);
	}

	/**
	 * 删除
	 */
	@Override
	public void deleteAttMeeting(TAttmeetingExample example) throws Exception {
		tAttmeetingDAO.deleteByExample(example);
	}

	/**
	 * 查询
	 */
	@Override
	public Pager queryAttTrainBypage(TAtttrainExample example, int pagesize,
			int currentpage) throws Exception {
		Pager page = new Pager();
		int startrecord = (currentpage - 1) * pagesize;
		List<TAtttrain> list = commonDAOEx.selectAtttrainForPage(example,
				startrecord, pagesize);
		int totalCount = tAtttrainDAO.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 */
	@Override
	public void saveAttTrain(TAtttrain tAttmeeting) throws Exception {
		tAtttrainDAO.insertSelective(tAttmeeting);
	}

	/**
	 * 删除
	 */
	@Override
	public void deleteAttTrain(TAtttrainExample example) throws Exception {
		tAtttrainDAO.deleteByExample(example);
	}

	/**
	 * 查询
	 */
	@Override
	public Pager queryHoldMeetingBypage(THoldmeetingExample example,
			int pagesize, int currentpage) throws Exception {
		Pager page = new Pager();
		int startrecord = (currentpage - 1) * pagesize;
		List<THoldmeeting> list = commonDAOEx.selectHoldMeetingForPage(example,
				startrecord, pagesize);
		int totalCount = tHoldmeetingDAO.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 */
	@Override
	public void saveHoldMeeting(THoldmeeting tHoldmeeting) throws Exception {
		tHoldmeetingDAO.insertSelective(tHoldmeeting);
	}

	/**
	 */
	@Override
	public void updateHoldMeeting(THoldmeeting tHoldmeeting) throws Exception {
		tHoldmeetingDAO.updateByPrimaryKeySelective(tHoldmeeting);

	}

	/**
	 * 删除
	 */
	@Override
	public void deleteHoldMeeting(THoldmeetingExample example) throws Exception {
		tHoldmeetingDAO.deleteByExample(example);
	}

	/**
	 * 查询
	 */
	@Override
	public Pager queryForeignBypage(TForeignExpertsExample example,
			int pagesize, int currentpage) throws Exception {
		Pager page = new Pager();
		int startrecord = (currentpage - 1) * pagesize;
		List<TForeignExperts> list = commonDAOEx.selectForeignForPage(example,
				startrecord, pagesize);
		int totalCount = tForeignExpertsDAO.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 */
	@Override
	public void saveForeign(TForeignExperts tForeignExperts) throws Exception {
		tForeignExpertsDAO.insertSelective(tForeignExperts);
	}

	/**
	 */
	@Override
	public void updateForeign(TForeignExperts tForeignExperts) throws Exception {
		tForeignExpertsDAO.updateByPrimaryKeySelective(tForeignExperts);

	}

	/**
	 * 删除
	 */
	@Override
	public void deleteForeign(TForeignExpertsExample example) throws Exception {
		tForeignExpertsDAO.deleteByExample(example);
	}

	/**
	 * 查询
	 */
	@Override
	public Pager querybookclub(TBookclubExample example, int pagesize,
			int currentpage) throws Exception {
		Pager page = new Pager();
		int startrecord = (currentpage - 1) * pagesize;
		List<TBookclub> list = commonDAOEx.selectbookclubForPage(example,
				startrecord, pagesize);
		int totalCount = tBookclubDAO.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 */
	@Override
	public void savebookclub(TBookclub tBookclub) throws Exception {
		tBookclubDAO.insertSelective(tBookclub);
	}

	/**
	 */
	@Override
	public void updatebookclub(TBookclub tBookclub) throws Exception {
		tBookclubDAO.updateByPrimaryKeySelective(tBookclub);

	}

	/**
	 * 删除
	 */
	@Override
	public void deletebookclub(TBookclubExample example) throws Exception {
		tBookclubDAO.deleteByExample(example);
	}

	/**
	 * 查询
	 */
	@Override
	public Pager queryhonoraward(THonorawardExample example, int pagesize,
			int currentpage) throws Exception {
		Pager page = new Pager();
		int startrecord = (currentpage - 1) * pagesize;
		List<THonoraward> list = commonDAOEx.selecthonorawardForPage(example,
				startrecord, pagesize);
		int totalCount = tHonorawardDAO.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 */
	@Override
	public void savehonoraward(THonoraward tHonoraward) throws Exception {
		tHonorawardDAO.insertSelective(tHonoraward);
	}

	/**
	 */
	@Override
	public void updatehonoraward(THonoraward tHonoraward) throws Exception {
		tHonorawardDAO.updateByPrimaryKeySelective(tHonoraward);

	}

	/**
	 * 删除
	 */
	@Override
	public void deletehonoraward(THonorawardExample example) throws Exception {
		tHonorawardDAO.deleteByExample(example);
	}

	/**
	 * 查询
	 */
	@Override
	public Pager querylearnact(TLearnactExample example, int pagesize,
			int currentpage) throws Exception {
		Pager page = new Pager();
		int startrecord = (currentpage - 1) * pagesize;
		List<TLearnact> list = commonDAOEx.selectlearnactForPage(example,
				startrecord, pagesize);
		int totalCount = tLearnactDAOImpl.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 */
	@Override
	public void savelearnact(TLearnact tLearnact) throws Exception {
		tLearnactDAOImpl.insertSelective(tLearnact);
	}

	/**
	 */
	@Override
	public void updatelearnact(TLearnact tLearnact) throws Exception {
		tLearnactDAOImpl.updateByPrimaryKeySelective(tLearnact);

	}

	/**
	 * 删除
	 */
	@Override
	public void deletelearnact(TLearnactExample example) throws Exception {
		tLearnactDAOImpl.deleteByExample(example);
	}
	
	/**
	 * 查询
	 */
	@Override
	public Pager querysocialevent(TSocialeventExample example, int pagesize,
			int currentpage) throws Exception {
		Pager page = new Pager();
		int startrecord = (currentpage - 1) * pagesize;
		List<TSocialevent> list = commonDAOEx.selectsocialeventForPage(example,
				startrecord, pagesize);
		int totalCount = tSocialeventDAO.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 */
	@Override
	public void savesocialevent(TSocialevent tLearnact) throws Exception {
		tSocialeventDAO.insertSelective(tLearnact);
	}

	/**
	 */
	@Override
	public void updatesocialevent(TSocialevent tLearnact) throws Exception {
		tSocialeventDAO.updateByPrimaryKeySelective(tLearnact);

	}

	/**
	 * 删除
	 */
	@Override
	public void deletesocialevent(TSocialeventExample example) throws Exception {
		tSocialeventDAO.deleteByExample(example);
	}
	
	/**
	 * 查询
	 */
	@Override
	public Pager querystudentaward(TStudentawardExample example, int pagesize,
			int currentpage) throws Exception {
		Pager page = new Pager();
		int startrecord = (currentpage - 1) * pagesize;
		List<TStudentaward> list = commonDAOEx.selectstudentawardForPage(example,
				startrecord, pagesize);
		int totalCount = tStudentawardDAO.countByExample(example);
		page.setRows(list);
		page.setTotal(totalCount);
		return page;
	}

	/**
	 */
	@Override
	public void savestudentaward(TStudentaward tLearnact) throws Exception {
		tStudentawardDAO.insertSelective(tLearnact);
	}

	/**
	 */
	@Override
	public void updatestudentaward(TStudentaward tLearnact) throws Exception {
		tStudentawardDAO.updateByPrimaryKeySelective(tLearnact);

	}

	/**
	 * 删除
	 */
	@Override
	public void deletestudentaward(TStudentawardExample example) throws Exception {
		tStudentawardDAO.deleteByExample(example);
	}

}
